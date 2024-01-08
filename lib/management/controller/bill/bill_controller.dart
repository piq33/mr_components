import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/mixin/bill_mixin.dart';
import 'package:bsl/model/bill_models.dart';
import 'package:bsl/model/school_models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillController extends GetxController
    with GetSingleTickerProviderStateMixin, BillConfigMixin {
  StudentModel student;
  String? schoolCode;
  String? yearTermCode;

  BillController({required this.student, this.schoolCode, this.yearTermCode});

  final tabs = [BillStatus.all, BillStatus.toBePaid, BillStatus.completed];
  final _billRepository = Get.find<RepositoryService>().billRepository;

  late TabController tabController;

  final _cancelTokens = List<CancelToken>.empty(growable: true);
  final loading = true.obs;
  final allList = List<BillModel>.empty().obs;
  final toBePaidList = List<BillModel>.empty().obs;
  final completedList = List<BillModel>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
    refreshData();
  }

  void filter({String? schoolCode, String? yearTermCode}) {
    this.schoolCode = schoolCode;
    this.yearTermCode = yearTermCode;
    refreshData();
  }

  void refreshData() async {
    loading.value = true;
    Future.wait([
      _fetchBill(
        schoolCode: schoolCode,
        yearTermCode: yearTermCode,
        status: BillStatus.all,
        studentCode: student.studentCode,
      ),
      _fetchBill(
        schoolCode: schoolCode,
        yearTermCode: yearTermCode,
        status: BillStatus.toBePaid,
        studentCode: student.studentCode,
      ),
      _fetchBill(
        schoolCode: schoolCode,
        yearTermCode: yearTermCode,
        status: BillStatus.completed,
        studentCode: student.studentCode,
      ),
    ]).then((value) async {
      // 根据账单配置，过滤不显示的账单数据
      final list = value.fold(List<BillModel>.empty(growable: true),
          (whole, list) => whole..addAll(list));
      final billConfigs = await fetchSchoolConfigs(list);

      allList.value =
          value[0].where((bill) => billConfigs.billEnable(bill)).toList();
      toBePaidList.value =
          value[1].where((bill) => billConfigs.billEnable(bill)).toList();
      completedList.value =
          value[2].where((bill) => billConfigs.billEnable(bill)).toList();
    }).whenComplete(() => loading.value = false);
  }

  Future<List<BillModel>> _fetchBill({
    String? schoolCode,
    String? yearTermCode,
    required BillStatus status,
    required String studentCode,
  }) async {
    try {
      logDebug('获取$status账单列表');
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final req = BillReq(
        schoolCode: schoolCode,
        yearTermCode: yearTermCode,
        status: status,
        studentCode: studentCode,
      );
      final r =
          await _billRepository.fetchBill(req: req, cancelToken: cancelToken);
      return r.success ? r.data : List.empty();
    } catch (e, stackTrace) {
      logError('获取账单列表异常: ${e.toString()}', e, stackTrace);
    }
    return List.empty();
  }

  @override
  void onClose() {
    for (var token in _cancelTokens) {
      token.cancel('dispose');
    }
    tabController.dispose();
    super.onClose();
  }
}

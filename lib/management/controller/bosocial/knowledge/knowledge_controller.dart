import 'package:components/event/bosocial_event.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/bosocial_models.dart';
import 'package:components/util/global.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class KnowledgeController extends GetxController {
  final String knowledgeId;

  KnowledgeController(this.knowledgeId);

  final _repository = Get.find<RepositoryService>().boSocialRepository;

  CancelToken? _readCancelToken;
  CancelToken? _dataCancelToken;
  // 当前是否有数据请求(防抖)
  var _inProcessing = false;
  var knowledge = KnowledgeDetailModel.empty().obs;

  @override
  void onReady() {
    super.onReady();
    _readKnowledge();
    _fetchData();
  }

  void refreshData() => _fetchData();

  void _readKnowledge() async {
    try {
      _readCancelToken = CancelToken();
      await _repository.readKnowledge(
        knowledgeId: knowledgeId,
        cancelToken: _readCancelToken,
      );
    } catch (e, stackTrace) {
      logError('发送干货浏览历史异常', e, stackTrace);
    }
  }

  void _fetchData() async {
    try {
      _dataCancelToken = CancelToken();
      final r = await _repository.fetchKnowledgeDetail(
        knowledgeId: knowledgeId,
        cancelToken: _dataCancelToken,
      );
      if (r.success) {
        KnowledgeDetailModel detail = r.data;
        knowledge.value = detail;
        eventBus.fire(KnowledgeSyncEvent(detail));
      }
    } catch (e, stackTrace) {
      logError('获取干货详情异常', e, stackTrace);
    } finally {
      _dataCancelToken = null;
    }
  }

  void like(bool like) async {
    if (!knowledge.value.validate || _inProcessing) return;

    _inProcessing = true;
    try {
      _dataCancelToken = CancelToken();
      final r = await _repository.likeKnowledge(
        knowledgeId: knowledgeId,
        like: like,
        cancelToken: _dataCancelToken,
      );
      if (r.success) _fetchData();
    } catch (e, stackTrace) {
      logError('干货点赞: $like异常', e, stackTrace);
    } finally {
      _inProcessing = false;
      _dataCancelToken = null;
    }
  }

  @override
  void onClose() {
    _dataCancelToken?.cancel('dispose');
    _readCancelToken?.cancel('dispose');
    super.onClose();
  }
}

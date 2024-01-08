import 'package:components/log/global_log.dart';
import 'package:components/model/album_models.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/school_models.dart';
import 'package:components/repository/album_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'clips_store.g.dart';

class ClipsStore = ClipsBase with _$ClipsStore;

abstract class ClipsBase with Store {
  ClipsBase(this.repository);

  final AlbumRepository repository;

  CancelToken? _cancelToken;
  List<ClipModel> data = [];

  @observable
  ObservableFuture<List<ClipModel>> fetchDataFuture =
      ObservableFuture.value([]);

  @action
  Future<List<ClipModel>> fetchData({required StudentModel student}) async {
    data = [];
    _cancelToken = CancelToken();
    final future = _fetchData(student);
    fetchDataFuture = ObservableFuture(future);
    return data = await future;
  }

  Future<List<ClipModel>> _fetchData(StudentModel student) async {
    final total = List<ClipModel>.empty(growable: true);

    // 获取班级剪影
    final classList = await _fetchClipData(student, SearchType.clazz, 1);
    total.addAll(classList);

    // 获取校园剪影
    final schoolList = await _fetchClipData(student, SearchType.school, 1);
    total.addAll(schoolList);

    // 获取个人剪影
    final personList = await _fetchClipData(student, SearchType.individual, 1);
    total.addAll(personList);

    total.sort((a, b) {
      final aDate = a.deployDate;
      final bDate = b.deployDate;
      if (aDate != null && bDate != null) return bDate.compareTo(aDate);
      return 0;
    });
    return total;
  }

  Future<List<ClipModel>> _fetchClipData(
    StudentModel student,
    SearchType searchType,
    int count,
  ) async {
    try {
      _cancelToken = CancelToken();
      final r = await repository.fetchClipList(
        searchType: searchType,
        current: 1,
        size: count,
        leaveDate: student.leaveDate,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        logDebug('请求剪影数据成功');
        BslPageResponse<List<ClipModel>> data = r.data;
        List<ClipModel> list = data.records;
        return list.map((e) => e.copyWith(searchType: searchType)).toList();
      }
    } catch (e, stackTrace) {
      logError('获取主页剪影数据异常: ${e.toString()}', e, stackTrace);
    }
    return List.empty();
  }

  void dispose() {
    _cancelToken?.cancel('dispose');
  }
}

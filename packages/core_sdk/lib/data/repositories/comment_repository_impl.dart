import 'package:core_sdk/common/streams/model_stream.dart';
import 'package:core_sdk/data/database/daos/comment_dao.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/comment_repository.dart';

@Singleton(as: CommentRepository)
class CommentRepositoryImpl implements CommentRepository {
  CommentDao get _dao => DomainGetIt.shared.get();

  @override
  ModelStream<CommentModel> getCommentStream(String id) => _dao.getByIdWatcher(id);

  @override
  ModelStream<List<CommentModel>> getTaskCommentsStream(String taskId) =>
      _dao.getTaskCommentsWatcher(taskId);
  @override
  ModelStream<List<CommentModel>> getProjectCommentsStream(String projectId) =>
      _dao.getProjectCommentsWatcher(projectId);

  @override
  Future<void> saveTaskComments(String taskId, List<CommentModel> list, {bool clear = false})  async {
    if(clear){
      final oldList = await _dao.getTaskComments(taskId);
      await _dao.deleteAllIds(oldList.map((e) => e.id).toList());
    }
    await _dao.upsertAll(list);
  }
}

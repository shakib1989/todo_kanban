import '../../common/common.dart';
import '../models/models.dart';

abstract class CommentRepository {
  ModelStream<CommentModel> getCommentStream(String id);
  ModelStream<List<CommentModel>> getTaskCommentsStream(String taskId);
  ModelStream<List<CommentModel>> getProjectCommentsStream(String projectId);

  Future<void> saveTaskComments(String taskId, List<CommentModel> list,
      {bool clear = false});
}

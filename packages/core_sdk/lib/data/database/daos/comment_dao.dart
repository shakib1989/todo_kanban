
import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/domain/domain.dart';

import '../base/daos/base_nosql_dao.dart';

abstract class CommentDao extends BaseNoSqlDao<CommentModel, String> {
  Future<List<CommentModel>> getTaskComments(String taskId);
  ModelStream<List<CommentModel>> getTaskCommentsWatcher(String taskId);
  ModelStream<List<CommentModel>> getProjectCommentsWatcher(String projectId);
}

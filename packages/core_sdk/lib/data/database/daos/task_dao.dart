
import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/domain/domain.dart';

import '../base/daos/base_nosql_dao.dart';

abstract class TaskDao extends BaseNoSqlDao<TaskModel, String> {

  Future<List<TaskModel>> getSectionTasks(String sectionId);
  ModelStream<List<TaskModel>> getSectionTasksWatcher(String sectionId);
  ModelStream<List<TaskModel>> getProjectTasksWatcher(String projectId);
}

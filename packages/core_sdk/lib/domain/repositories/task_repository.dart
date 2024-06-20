import 'package:core_sdk/common/common.dart';

import '../models/models.dart';

abstract class TaskRepository {
  Future<void> deleteTask(String id);
  Future<Optional<TaskModel>> saveTask(TaskModel data);
  Future<Optional<TaskModel>>  getTask(String id);
  ModelStream<TaskModel> getTaskStream(String id);
  ModelStream<List<TaskModel>> getSectionTasksStream(String sectionId);
  ModelStream<List<TaskModel>> getProjectTasksStream(String projectId);
  Future<void> saveSectionTasks(String sectionId, List<TaskModel> list, {bool clear = false});
}

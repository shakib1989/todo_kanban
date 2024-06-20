import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/data/database/daos/task_dao.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/task_repository.dart';

@Singleton(as: TaskRepository)
class TaskRepositoryImpl implements TaskRepository {
  TaskDao get _dao => DomainGetIt.shared.get();

  @override
  ModelStream<List<TaskModel>> getProjectTasksStream(String projectId) =>
      _dao.getProjectTasksWatcher(projectId);

  @override
  ModelStream<List<TaskModel>> getSectionTasksStream(String sectionId) =>
      _dao.getSectionTasksWatcher(sectionId);

  @override
  ModelStream<TaskModel> getTaskStream(String id) => _dao.getByIdWatcher(id);

  @override
  Future<void> saveSectionTasks(String sectionId, List<TaskModel> list,
      {bool clear = false}) async {
    if (clear) {
      final oldList = await _dao.getSectionTasks(sectionId);
      await _dao.deleteAllIds(oldList.map((e) => e.id).toList());
    }
    await _dao.upsertAll(list);
  }

  @override
  Future<Optional<TaskModel>> saveTask(TaskModel data) async {
    await _dao.upsert(data);
    return _dao.getById(data.id);
  }

  @override
  Future<Optional<TaskModel>> getTask(String id) => _dao.getById(id);

  @override
  Future<void> deleteTask(String id) => _dao.delete(id);
}

import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/data/database/database.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../base/daos/base_nosql_dao_impl.dart';
import '../../entities/entities.dart';
import '../task_dao.dart';

@Singleton(as: TaskDao)
class TaskDaoImpl extends BaseNoSqlDaoImpl<TaskModel, TaskEntity, String>
    implements TaskDao {
  TaskDaoImpl();

  @override
  IsarCollection<TaskEntity> get entityCollection => Database.shared.db.task;

  @override
  ModelStream<List<TaskModel>> getProjectTasksWatcher(String projectId) {
    final query = entityCollection.where().projectIdEqualTo(projectId).build();
    final dataListStream = query.watch(fireImmediately: true);
    return ModelStreamImpl<List<TaskModel>, List<TaskEntity>>(
      stream: dataListStream,
      convertToModel: convertToModelList,
    );
  }

  @override
  Future<List<TaskModel>> getSectionTasks(String sectionId) async {
    final query = entityCollection.where().sectionIdEqualTo(sectionId).build();
    final entityList =
        await entityCollection.isar.txn(() async => await query.findAll());
    final list = <TaskModel>[];
    for (TaskEntity entity in entityList) {
      list.add(convertToModel(entity).data);
    }
    return list;
  }

  @override
  ModelStream<List<TaskModel>> getSectionTasksWatcher(String sectionId) {
    final query = entityCollection.where().sectionIdEqualTo(sectionId).build();
    final dataListStream = query.watch(fireImmediately: true);
    return ModelStreamImpl<List<TaskModel>, List<TaskEntity>>(
      stream: dataListStream,
      convertToModel: convertToModelList,
    );
  }

  @override
  Optional<TaskEntity> convertToEntity(TaskModel? model) {
    if (model == null) {
      return Optional.empty();
    }
    return Optional.ofNullable(TaskEntity.fromModel(model));
  }

  @override
  Optional<TaskModel> convertToModel(TaskEntity? entity) =>
      Optional.ofNullable(entity?.toModel());

  @override
  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idEqual(
          QueryBuilder<TaskEntity, TaskEntity, QWhereClause> queryBuilder,
          String value) =>
      queryBuilder.idEqualTo(value);

  @override
  String idFromModel(TaskModel model) => model.id;
}

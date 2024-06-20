import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/data/database/database.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../base/daos/base_nosql_dao_impl.dart';
import '../../entities/entities.dart';
import '../comment_dao.dart';
import '../section_dao.dart';
import '../task_dao.dart';

@Singleton(as: CommentDao)
class CommentDaoImpl
    extends BaseNoSqlDaoImpl<CommentModel, CommentEntity, String>
    implements CommentDao {
  CommentDaoImpl();

  @override
  IsarCollection<CommentEntity> get entityCollection =>
      Database.shared.db.comment;

  @override
  Optional<CommentEntity> convertToEntity(CommentModel? model) {
    if (model == null) {
      return Optional.empty();
    }
    return Optional.ofNullable(CommentEntity.fromModel(model));
  }

  @override
  Future<List<CommentModel>> getTaskComments(String taskId) async {
    final query = entityCollection.where().taskIdEqualTo(taskId).build();
    final entityList =
        await entityCollection.isar.txn(() async => await query.findAll());
    final list = <CommentModel>[];
    for (CommentEntity entity in entityList) {
      list.add(convertToModel(entity).data);
    }
    return list;
  }

  @override
  ModelStream<List<CommentModel>> getTaskCommentsWatcher(String taskId) {
    final query = entityCollection.where().taskIdEqualTo(taskId).build();
    final dataListStream = query.watch(fireImmediately: true);
    return ModelStreamImpl<List<CommentModel>, List<CommentEntity>>(
      stream: dataListStream,
      convertToModel: convertToModelList,
    );
  }

  @override
  ModelStream<List<CommentModel>> getProjectCommentsWatcher(String projectId) {
    final query = entityCollection.where().projectIdEqualTo(projectId).build();
    final dataListStream = query.watch(fireImmediately: true);
    return ModelStreamImpl<List<CommentModel>, List<CommentEntity>>(
      stream: dataListStream,
      convertToModel: convertToModelList,
    );
  }

  @override
  Optional<CommentModel> convertToModel(CommentEntity? entity) =>
      Optional.ofNullable(entity?.toModel());

  @override
  QueryBuilder<CommentEntity, CommentEntity, QAfterWhereClause> idEqual(
          QueryBuilder<CommentEntity, CommentEntity, QWhereClause> queryBuilder,
          String value) =>
      queryBuilder.idEqualTo(value);

  @override
  String idFromModel(CommentModel model) => model.id;
}

import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/data/database/database.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../base/daos/base_nosql_dao_impl.dart';
import '../../entities/entities.dart';
import '../section_dao.dart';
import '../task_dao.dart';

@Singleton(as: SectionDao)
class SectionDaoImpl
    extends BaseNoSqlDaoImpl<SectionModel, SectionEntity, String>
    implements SectionDao {
  SectionDaoImpl();

  @override
  IsarCollection<SectionEntity> get entityCollection =>
      Database.shared.db.section;

  @override
  Future<List<SectionModel>> getProjectSections(String projectId) async {
    final query = entityCollection.where().projectIdEqualTo(projectId).build();
    final entityList =
        await entityCollection.isar.txn(() async => await query.findAll());
    final list = <SectionModel>[];
    for (SectionEntity entity in entityList) {
      list.add(convertToModel(entity).data);
    }
    return list;
  }

  @override
  ModelStream<List<SectionModel>> getProjectSectionsWatcher(String projectId) {
    final query = entityCollection.where().projectIdEqualTo(projectId).build();
    final dataListStream = query.watch(fireImmediately: true);
    return ModelStreamImpl<List<SectionModel>, List<SectionEntity>>(
      stream: dataListStream,
      convertToModel: convertToModelList,
    );
  }

  @override
  Optional<SectionEntity> convertToEntity(SectionModel? model) {
    if (model == null) {
      return Optional.empty();
    }
    return Optional.ofNullable(SectionEntity.fromModel(model));
  }

  @override
  Optional<SectionModel> convertToModel(SectionEntity? entity) =>
      Optional.ofNullable(entity?.toModel());

  @override
  QueryBuilder<SectionEntity, SectionEntity, QAfterWhereClause> idEqual(
          QueryBuilder<SectionEntity, SectionEntity, QWhereClause> queryBuilder,
          String value) =>
      queryBuilder.idEqualTo(value);

  @override
  String idFromModel(SectionModel model) => model.id;
}

import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/data/database/database.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../base/daos/base_nosql_dao_impl.dart';
import '../../entities/entities.dart';
import '../comment_dao.dart';
import '../project_dao.dart';
import '../section_dao.dart';
import '../task_dao.dart';

@Singleton(as: ProjectDao)
class ProjectDaoImpl
    extends BaseNoSqlDaoImpl<ProjectModel, ProjectEntity, String>
    implements ProjectDao {
  ProjectDaoImpl();

  @override
  IsarCollection<ProjectEntity> get entityCollection =>
      Database.shared.db.project;

  @override
  Optional<ProjectEntity> convertToEntity(ProjectModel? model) {
    if (model == null) {
      return Optional.empty();
    }
    return Optional.ofNullable(ProjectEntity.fromModel(model));
  }

  @override
  Optional<ProjectModel> convertToModel(ProjectEntity? entity) =>
      Optional.ofNullable(entity?.toModel());

  @override
  QueryBuilder<ProjectEntity, ProjectEntity, QAfterWhereClause> idEqual(
          QueryBuilder<ProjectEntity, ProjectEntity, QWhereClause> queryBuilder,
          String value) =>
      queryBuilder.idEqualTo(value);

  @override
  String idFromModel(ProjectModel model) => model.id;
}

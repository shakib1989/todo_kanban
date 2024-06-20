import 'package:core_sdk/data/database/daos/project_dao.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:injectable/injectable.dart';

import '../../common/common.dart';
import '../../domain/repositories/project_repository.dart';

@Singleton(as: ProjectRepository)
class ProjectRepositoryImpl implements ProjectRepository {
  ProjectDao get _dao => DomainGetIt.shared.get();
  @override
  ModelStream<ProjectModel> getProjectModelStream(String id) =>
      _dao.getByIdWatcher(id);

  @override
  Future<void> clear() => _dao.clear();

  @override
  Future<void> saveAll(List<ProjectModel> list) => _dao.upsertAll(list);

  @override
  ModelStream<List<ProjectModel>> getProjectsStream()=> _dao.getAllWatcher();
}

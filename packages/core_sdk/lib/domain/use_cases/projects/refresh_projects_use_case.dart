import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/network/todo_network.dart';
import 'package:core_sdk/domain/repositories/project_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class RefreshProjectUseCase {
  TodoNetwork get _network => DomainGetIt.shared.get();
  ProjectRepository get _repo => DomainGetIt.shared.get();

  Future<Either<FailureModel, List<ProjectModel>>> call() async {
    final result = await _network.getProjects();
    if (result.isRight()) {
      final list = result.getOrElse(() => []);
      await _repo.clear();
      await _repo.saveAll(list);
    }
    return result;
  }
}

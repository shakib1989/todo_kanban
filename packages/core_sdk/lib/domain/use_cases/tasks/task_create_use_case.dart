import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/network/todo_network.dart';
import 'package:core_sdk/domain/repositories/project_repository.dart';
import 'package:core_sdk/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@singleton
class TaskCreateUseCase {
  TodoNetwork get _network => DomainGetIt.shared.get();
  TaskRepository get _repo => DomainGetIt.shared.get();

  Future<Either<FailureModel, TaskModel>> call(TaskEditModel data) async {
    final result = await _network.createTask(data);
    if (result.isRight()) {
      await result.fold((failure) => null, (data) async {
        await _repo.saveTask(data);
      });
    }
    return result;
  }
}

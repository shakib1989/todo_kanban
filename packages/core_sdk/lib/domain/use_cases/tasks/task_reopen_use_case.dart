import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/network/todo_network.dart';
import 'package:core_sdk/domain/repositories/project_repository.dart';
import 'package:core_sdk/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@singleton
class TaskReopenUseCase {
  TodoNetwork get _network => DomainGetIt.shared.get();
  TaskRepository get _repo => DomainGetIt.shared.get();

  Future<Either<FailureModel, EmptyModel>> call(String taskId) async {
    final result = await _network.reopenTask(taskId);
    if (result.isRight()) {
      final dataOption = await _repo.getTask(taskId);
      if (dataOption.hasData) {
        dataOption.data.completed = false;
        await _repo.saveTask(dataOption.data);
      }
    }
    return result;
  }
}

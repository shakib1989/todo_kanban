import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/network/todo_network.dart';
import 'package:core_sdk/domain/repositories/project_repository.dart';
import 'package:core_sdk/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@singleton
class RefreshCommentsUseCase {
  TodoNetwork get _network => DomainGetIt.shared.get();
  CommentRepository get _repo => DomainGetIt.shared.get();

  Future<Either<FailureModel, List<CommentModel>>> call(
    String taskId,
    int page,
  ) async {
    final result = await _network.getTaskComments(taskId);
    if (result.isRight()) {
      final list = result.getOrElse(() => []);
      await _repo.saveTaskComments(taskId, list, clear: page == 0);
    }
    return result;
  }
}

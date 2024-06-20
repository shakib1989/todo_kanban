import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/network/todo_network.dart';
import 'package:core_sdk/domain/repositories/project_repository.dart';
import 'package:core_sdk/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@singleton
class TaskCommentsStreamUseCase {
  CommentRepository get _repo => DomainGetIt.shared.get();

  ModelStream<List<CommentModel>> call(String taskId) =>
      _repo.getTaskCommentsStream(taskId);
}

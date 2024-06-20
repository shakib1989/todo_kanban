import 'package:core_sdk/common/models/models.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/network/todo_network.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: TodoNetwork)
class TodoNetworkImpl extends TodoNetwork {
  @override
  Future<Either<FailureModel, List<SectionModel>>> getProjectSections(
      String projectId) async {
    return Left(FailureModel.genericFailure());
  }

  @override
  Future<Either<FailureModel, List<ProjectModel>>> getProjects() async {
    return Left(FailureModel.genericFailure());
  }

  @override
  Future<Either<FailureModel, List<TaskModel>>> getSectionTasks(
      String sectionId) async {
    return Left(FailureModel.genericFailure());
  }

  @override
  Future<Either<FailureModel, List<CommentModel>>> getTaskComments(
      String taskId) async {
    return Left(FailureModel.genericFailure());
  }

  @override
  Future<Either<FailureModel, TaskModel>> createTask(TaskEditModel data) async {
    return Left(FailureModel.genericFailure());
  }

  @override
  Future<Either<FailureModel, TaskModel>> updateTask(TaskEditModel data) async {
    return Left(FailureModel.genericFailure());
  }

  @override
  Future<Either<FailureModel, EmptyModel>> closeTask(String taskId) async {
    return Left(FailureModel.genericFailure());
  }

  @override
  Future<Either<FailureModel, EmptyModel>> deleteTask(String taskId) async {
    return Left(FailureModel.genericFailure());
  }

  @override
  Future<Either<FailureModel, EmptyModel>> reopenTask(String taskId) async {
    return Left(FailureModel.genericFailure());
  }
}

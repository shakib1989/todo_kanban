import 'package:core_sdk/domain/domain.dart';

import '../../common/common.dart';

abstract class TodoNetwork {
  Future<Either<FailureModel, List<ProjectModel>>> getProjects();
  Future<Either<FailureModel, List<SectionModel>>> getProjectSections(
      String projectId);
  Future<Either<FailureModel, List<TaskModel>>> getSectionTasks(
      String sectionId);
  Future<Either<FailureModel, List<CommentModel>>> getTaskComments(
      String taskId);


  Future<Either<FailureModel, TaskModel>> createTask(TaskEditModel data);
  Future<Either<FailureModel, TaskModel>> updateTask(TaskEditModel data);
  Future<Either<FailureModel, EmptyModel>> closeTask(String taskId);
  Future<Either<FailureModel, EmptyModel>> reopenTask(String taskId);
  Future<Either<FailureModel, EmptyModel>> deleteTask(String taskId);
}

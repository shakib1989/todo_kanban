import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/domain/domain.dart';

abstract class ProjectRepository {
  ModelStream<List<ProjectModel>> getProjectsStream();
  ModelStream<ProjectModel> getProjectModelStream(String id);
  Future<void> saveAll(List<ProjectModel> list);
  Future<void> clear();
}

import 'package:core_sdk/common/common.dart';
import 'package:core_sdk/domain/domain.dart';

abstract class SectionRepository {
  ModelStream<List<SectionModel>> getProjectSectionsStream(String projectId);

  ModelStream<SectionModel> getSectionStream(String id);

  Future<void> saveProjectSections(String projectId, List<SectionModel> list, {bool clear = false});
}

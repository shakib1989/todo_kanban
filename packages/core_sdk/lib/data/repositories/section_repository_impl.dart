import 'package:core_sdk/common/streams/model_stream.dart';
import 'package:core_sdk/data/database/daos/section_dao.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/models/models.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/section_repository.dart';

@Singleton(as: SectionRepository)
class SectionRepositoryImpl implements SectionRepository {
  SectionDao get _dao => DomainGetIt.shared.get();

  @override
  ModelStream<List<SectionModel>> getProjectSectionsStream(String projectId) =>
      _dao.getProjectSectionsWatcher(projectId);

  @override
  ModelStream<SectionModel> getSectionStream(String id) =>
      _dao.getByIdWatcher(id);

  @override
  Future<void> saveProjectSections(String projectId, List<SectionModel> list,
      {bool clear = false}) async {
    if(clear){
      final oldList = await _dao.getProjectSections(projectId);
      await _dao.deleteAllIds(oldList.map((e) => e.id).toList());
    }
    await _dao.upsertAll(list);
  }
}

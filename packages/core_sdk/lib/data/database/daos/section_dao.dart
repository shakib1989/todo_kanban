import 'package:core_sdk/domain/domain.dart';

import '../../../common/common.dart';
import '../base/daos/base_nosql_dao.dart';

abstract class SectionDao extends BaseNoSqlDao<SectionModel, String> {
  Future<List<SectionModel>> getProjectSections(String projectId);
  ModelStream<List<SectionModel>> getProjectSectionsWatcher(String projectId);

}

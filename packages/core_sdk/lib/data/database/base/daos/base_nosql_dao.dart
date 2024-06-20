
import 'package:core_sdk/common/common.dart';


abstract class BaseNoSqlDao<Model, IdType> {
  Future<Optional<Model>> getById(IdType id);

  ModelStream<Model> getByIdWatcher(IdType id);

  Future<List<Model>> getAll();

  ModelStream<List<Model>> getAllWatcher();

  Future<List<Model>> getIdList(List<IdType> idList);

  ModelStream<List<Model>> getIdListWatcher(List<IdType> idList);

  Future<void> upsert(Model data);

  Future<void> upsertAll(List<Model> dataList);

  Future<void> delete(IdType id);

  Future<void> deleteAllIds(List<IdType> idList);

  Future<void> clear();
}

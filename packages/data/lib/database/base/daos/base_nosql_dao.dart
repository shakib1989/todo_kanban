
import 'package:domain/common/common.dart';

import '../streams/model_stream.dart';

abstract class BaseNoSqlDao<Model, IdType> {
  Future<Optional<Model>> getById(IdType id);

  Future<ModelStream<Model>> getByIdWatcher(IdType id);

  Future<List<Model>> getAll();

  Future<ModelStream<List<Model>>> getAllWatcher();

  Future<List<Model>> getIdList(List<IdType> idList);

  Future<ModelStream<List<Model>>> getIdListWatcher(List<IdType> idList);

  Future<void> upsert(Model data);

  Future<void> upsertAll(List<Model> dataList);

  Future<void> delete(IdType id);

  Future<void> deleteAll(List<IdType> idList);
}


import 'package:isar/isar.dart';

import 'base_nosql_entity.dart';
import '../constants/db_constants.dart';


class BaseNoSqlSingletonEntity extends BaseNoSqlEntity{
  @override
  Id tempId = DbConstants.singletonId;
}
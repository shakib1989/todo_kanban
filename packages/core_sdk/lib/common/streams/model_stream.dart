import 'dart:async';

import 'package:core_sdk/common/common.dart';


abstract class ModelStream<Model> extends Stream<Optional<Model>> {
  bool get initialDataSent;
}

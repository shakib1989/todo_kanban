import 'dart:async';

import 'package:domain/common/models/models.dart';


abstract class ModelStream<Model> extends Stream<Optional<Model>> {
  bool get initialDataSent;
}

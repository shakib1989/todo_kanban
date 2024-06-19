import 'package:flutter/material.dart';

abstract class SnackBarHelper {
  static final key = GlobalKey<ScaffoldMessengerState>();

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>?
      showSnackBar(SnackBar snackBar) =>
          key.currentState?.showSnackBar(snackBar);
  static void close() => key.currentState?.clearSnackBars();
}

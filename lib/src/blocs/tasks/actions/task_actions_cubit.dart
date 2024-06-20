import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban/src/enums/enums.dart';

part 'task_actions_state.dart';
part 'task_actions_cubit.freezed.dart';

class TaskActionsCubit extends Cubit<TaskActionsState> {
  TaskActionsCubit() : super(TaskActionsState.empty());
}

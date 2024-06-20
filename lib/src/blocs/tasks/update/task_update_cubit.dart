import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core_sdk/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban/src/enums/enums.dart';

part 'task_update_state.dart';
part 'task_update_cubit.freezed.dart';

class TaskUpdateCubit extends Cubit<TaskUpdateState> {
 
  TaskUpdateCubit() : super(TaskUpdateState.empty());

 


}

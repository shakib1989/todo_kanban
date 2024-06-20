import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core_sdk/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban/src/enums/enums.dart';

part 'task_create_state.dart';
part 'task_create_cubit.freezed.dart';

class TaskCreateCubit extends Cubit<TaskCreateState> {
 
  TaskCreateCubit() : super(TaskCreateState.empty());

 


}

part of 'task_update_cubit.dart';

@freezed
class TaskUpdateState with _$TaskUpdateState {
  const factory TaskUpdateState({
    required LoadingPhase phase,
  }) = _TaskUpdateState;

  factory TaskUpdateState.empty() => const TaskUpdateState(
        phase: LoadingPhase.initial,
      );
}

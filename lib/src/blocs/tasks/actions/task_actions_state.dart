part of 'task_actions_cubit.dart';

@freezed
class TaskActionsState with _$TaskActionsState {
  const factory TaskActionsState({
    required LoadingPhase phase,
  }) = _TaskActionsState;

  factory TaskActionsState.empty() => const TaskActionsState(
        phase: LoadingPhase.initial,
      );
}

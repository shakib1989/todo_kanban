part of 'task_create_cubit.dart';

@freezed
class TaskCreateState with _$TaskCreateState {
  const factory TaskCreateState({
    required LoadingPhase phase,
  }) = _TaskCreateState;

  factory TaskCreateState.empty() => const TaskCreateState(
        phase: LoadingPhase.initial,
      );
}

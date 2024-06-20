// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_actions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskActionsState {
  LoadingPhase get phase => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskActionsStateCopyWith<TaskActionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskActionsStateCopyWith<$Res> {
  factory $TaskActionsStateCopyWith(
          TaskActionsState value, $Res Function(TaskActionsState) then) =
      _$TaskActionsStateCopyWithImpl<$Res, TaskActionsState>;
  @useResult
  $Res call({LoadingPhase phase});
}

/// @nodoc
class _$TaskActionsStateCopyWithImpl<$Res, $Val extends TaskActionsState>
    implements $TaskActionsStateCopyWith<$Res> {
  _$TaskActionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
  }) {
    return _then(_value.copyWith(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as LoadingPhase,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskActionsStateImplCopyWith<$Res>
    implements $TaskActionsStateCopyWith<$Res> {
  factory _$$TaskActionsStateImplCopyWith(_$TaskActionsStateImpl value,
          $Res Function(_$TaskActionsStateImpl) then) =
      __$$TaskActionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingPhase phase});
}

/// @nodoc
class __$$TaskActionsStateImplCopyWithImpl<$Res>
    extends _$TaskActionsStateCopyWithImpl<$Res, _$TaskActionsStateImpl>
    implements _$$TaskActionsStateImplCopyWith<$Res> {
  __$$TaskActionsStateImplCopyWithImpl(
      _$TaskActionsStateImpl _value, $Res Function(_$TaskActionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
  }) {
    return _then(_$TaskActionsStateImpl(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as LoadingPhase,
    ));
  }
}

/// @nodoc

class _$TaskActionsStateImpl implements _TaskActionsState {
  const _$TaskActionsStateImpl({required this.phase});

  @override
  final LoadingPhase phase;

  @override
  String toString() {
    return 'TaskActionsState(phase: $phase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskActionsStateImpl &&
            (identical(other.phase, phase) || other.phase == phase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskActionsStateImplCopyWith<_$TaskActionsStateImpl> get copyWith =>
      __$$TaskActionsStateImplCopyWithImpl<_$TaskActionsStateImpl>(
          this, _$identity);
}

abstract class _TaskActionsState implements TaskActionsState {
  const factory _TaskActionsState({required final LoadingPhase phase}) =
      _$TaskActionsStateImpl;

  @override
  LoadingPhase get phase;
  @override
  @JsonKey(ignore: true)
  _$$TaskActionsStateImplCopyWith<_$TaskActionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

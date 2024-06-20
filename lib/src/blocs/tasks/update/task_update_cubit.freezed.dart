// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_update_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskUpdateState {
  LoadingPhase get phase => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskUpdateStateCopyWith<TaskUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskUpdateStateCopyWith<$Res> {
  factory $TaskUpdateStateCopyWith(
          TaskUpdateState value, $Res Function(TaskUpdateState) then) =
      _$TaskUpdateStateCopyWithImpl<$Res, TaskUpdateState>;
  @useResult
  $Res call({LoadingPhase phase});
}

/// @nodoc
class _$TaskUpdateStateCopyWithImpl<$Res, $Val extends TaskUpdateState>
    implements $TaskUpdateStateCopyWith<$Res> {
  _$TaskUpdateStateCopyWithImpl(this._value, this._then);

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
abstract class _$$TaskUpdateStateImplCopyWith<$Res>
    implements $TaskUpdateStateCopyWith<$Res> {
  factory _$$TaskUpdateStateImplCopyWith(_$TaskUpdateStateImpl value,
          $Res Function(_$TaskUpdateStateImpl) then) =
      __$$TaskUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingPhase phase});
}

/// @nodoc
class __$$TaskUpdateStateImplCopyWithImpl<$Res>
    extends _$TaskUpdateStateCopyWithImpl<$Res, _$TaskUpdateStateImpl>
    implements _$$TaskUpdateStateImplCopyWith<$Res> {
  __$$TaskUpdateStateImplCopyWithImpl(
      _$TaskUpdateStateImpl _value, $Res Function(_$TaskUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
  }) {
    return _then(_$TaskUpdateStateImpl(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as LoadingPhase,
    ));
  }
}

/// @nodoc

class _$TaskUpdateStateImpl implements _TaskUpdateState {
  const _$TaskUpdateStateImpl({required this.phase});

  @override
  final LoadingPhase phase;

  @override
  String toString() {
    return 'TaskUpdateState(phase: $phase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskUpdateStateImpl &&
            (identical(other.phase, phase) || other.phase == phase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskUpdateStateImplCopyWith<_$TaskUpdateStateImpl> get copyWith =>
      __$$TaskUpdateStateImplCopyWithImpl<_$TaskUpdateStateImpl>(
          this, _$identity);
}

abstract class _TaskUpdateState implements TaskUpdateState {
  const factory _TaskUpdateState({required final LoadingPhase phase}) =
      _$TaskUpdateStateImpl;

  @override
  LoadingPhase get phase;
  @override
  @JsonKey(ignore: true)
  _$$TaskUpdateStateImplCopyWith<_$TaskUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

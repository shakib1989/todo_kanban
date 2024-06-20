// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_create_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskCreateState {
  LoadingPhase get phase => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCreateStateCopyWith<TaskCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateStateCopyWith<$Res> {
  factory $TaskCreateStateCopyWith(
          TaskCreateState value, $Res Function(TaskCreateState) then) =
      _$TaskCreateStateCopyWithImpl<$Res, TaskCreateState>;
  @useResult
  $Res call({LoadingPhase phase});
}

/// @nodoc
class _$TaskCreateStateCopyWithImpl<$Res, $Val extends TaskCreateState>
    implements $TaskCreateStateCopyWith<$Res> {
  _$TaskCreateStateCopyWithImpl(this._value, this._then);

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
abstract class _$$TaskCreateStateImplCopyWith<$Res>
    implements $TaskCreateStateCopyWith<$Res> {
  factory _$$TaskCreateStateImplCopyWith(_$TaskCreateStateImpl value,
          $Res Function(_$TaskCreateStateImpl) then) =
      __$$TaskCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingPhase phase});
}

/// @nodoc
class __$$TaskCreateStateImplCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$TaskCreateStateImpl>
    implements _$$TaskCreateStateImplCopyWith<$Res> {
  __$$TaskCreateStateImplCopyWithImpl(
      _$TaskCreateStateImpl _value, $Res Function(_$TaskCreateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
  }) {
    return _then(_$TaskCreateStateImpl(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as LoadingPhase,
    ));
  }
}

/// @nodoc

class _$TaskCreateStateImpl implements _TaskCreateState {
  const _$TaskCreateStateImpl({required this.phase});

  @override
  final LoadingPhase phase;

  @override
  String toString() {
    return 'TaskCreateState(phase: $phase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateStateImpl &&
            (identical(other.phase, phase) || other.phase == phase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCreateStateImplCopyWith<_$TaskCreateStateImpl> get copyWith =>
      __$$TaskCreateStateImplCopyWithImpl<_$TaskCreateStateImpl>(
          this, _$identity);
}

abstract class _TaskCreateState implements TaskCreateState {
  const factory _TaskCreateState({required final LoadingPhase phase}) =
      _$TaskCreateStateImpl;

  @override
  LoadingPhase get phase;
  @override
  @JsonKey(ignore: true)
  _$$TaskCreateStateImplCopyWith<_$TaskCreateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

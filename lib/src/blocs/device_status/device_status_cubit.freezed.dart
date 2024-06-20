// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceStatusState {
  bool get bluetooth => throw _privateConstructorUsedError;
  bool get bluetoothHeadSet => throw _privateConstructorUsedError;
  bool get mobileNetwork => throw _privateConstructorUsedError;
  bool get wifiNetwork => throw _privateConstructorUsedError;
  bool get hasInternet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceStatusStateCopyWith<DeviceStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusStateCopyWith<$Res> {
  factory $DeviceStatusStateCopyWith(
          DeviceStatusState value, $Res Function(DeviceStatusState) then) =
      _$DeviceStatusStateCopyWithImpl<$Res, DeviceStatusState>;
  @useResult
  $Res call(
      {bool bluetooth,
      bool bluetoothHeadSet,
      bool mobileNetwork,
      bool wifiNetwork,
      bool hasInternet});
}

/// @nodoc
class _$DeviceStatusStateCopyWithImpl<$Res, $Val extends DeviceStatusState>
    implements $DeviceStatusStateCopyWith<$Res> {
  _$DeviceStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bluetooth = null,
    Object? bluetoothHeadSet = null,
    Object? mobileNetwork = null,
    Object? wifiNetwork = null,
    Object? hasInternet = null,
  }) {
    return _then(_value.copyWith(
      bluetooth: null == bluetooth
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as bool,
      bluetoothHeadSet: null == bluetoothHeadSet
          ? _value.bluetoothHeadSet
          : bluetoothHeadSet // ignore: cast_nullable_to_non_nullable
              as bool,
      mobileNetwork: null == mobileNetwork
          ? _value.mobileNetwork
          : mobileNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      wifiNetwork: null == wifiNetwork
          ? _value.wifiNetwork
          : wifiNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      hasInternet: null == hasInternet
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceStatusStateImplCopyWith<$Res>
    implements $DeviceStatusStateCopyWith<$Res> {
  factory _$$DeviceStatusStateImplCopyWith(_$DeviceStatusStateImpl value,
          $Res Function(_$DeviceStatusStateImpl) then) =
      __$$DeviceStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool bluetooth,
      bool bluetoothHeadSet,
      bool mobileNetwork,
      bool wifiNetwork,
      bool hasInternet});
}

/// @nodoc
class __$$DeviceStatusStateImplCopyWithImpl<$Res>
    extends _$DeviceStatusStateCopyWithImpl<$Res, _$DeviceStatusStateImpl>
    implements _$$DeviceStatusStateImplCopyWith<$Res> {
  __$$DeviceStatusStateImplCopyWithImpl(_$DeviceStatusStateImpl _value,
      $Res Function(_$DeviceStatusStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bluetooth = null,
    Object? bluetoothHeadSet = null,
    Object? mobileNetwork = null,
    Object? wifiNetwork = null,
    Object? hasInternet = null,
  }) {
    return _then(_$DeviceStatusStateImpl(
      bluetooth: null == bluetooth
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as bool,
      bluetoothHeadSet: null == bluetoothHeadSet
          ? _value.bluetoothHeadSet
          : bluetoothHeadSet // ignore: cast_nullable_to_non_nullable
              as bool,
      mobileNetwork: null == mobileNetwork
          ? _value.mobileNetwork
          : mobileNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      wifiNetwork: null == wifiNetwork
          ? _value.wifiNetwork
          : wifiNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      hasInternet: null == hasInternet
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DeviceStatusStateImpl implements _DeviceStatusState {
  const _$DeviceStatusStateImpl(
      {required this.bluetooth,
      required this.bluetoothHeadSet,
      required this.mobileNetwork,
      required this.wifiNetwork,
      required this.hasInternet});

  @override
  final bool bluetooth;
  @override
  final bool bluetoothHeadSet;
  @override
  final bool mobileNetwork;
  @override
  final bool wifiNetwork;
  @override
  final bool hasInternet;

  @override
  String toString() {
    return 'DeviceStatusState(bluetooth: $bluetooth, bluetoothHeadSet: $bluetoothHeadSet, mobileNetwork: $mobileNetwork, wifiNetwork: $wifiNetwork, hasInternet: $hasInternet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceStatusStateImpl &&
            (identical(other.bluetooth, bluetooth) ||
                other.bluetooth == bluetooth) &&
            (identical(other.bluetoothHeadSet, bluetoothHeadSet) ||
                other.bluetoothHeadSet == bluetoothHeadSet) &&
            (identical(other.mobileNetwork, mobileNetwork) ||
                other.mobileNetwork == mobileNetwork) &&
            (identical(other.wifiNetwork, wifiNetwork) ||
                other.wifiNetwork == wifiNetwork) &&
            (identical(other.hasInternet, hasInternet) ||
                other.hasInternet == hasInternet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bluetooth, bluetoothHeadSet,
      mobileNetwork, wifiNetwork, hasInternet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceStatusStateImplCopyWith<_$DeviceStatusStateImpl> get copyWith =>
      __$$DeviceStatusStateImplCopyWithImpl<_$DeviceStatusStateImpl>(
          this, _$identity);
}

abstract class _DeviceStatusState implements DeviceStatusState {
  const factory _DeviceStatusState(
      {required final bool bluetooth,
      required final bool bluetoothHeadSet,
      required final bool mobileNetwork,
      required final bool wifiNetwork,
      required final bool hasInternet}) = _$DeviceStatusStateImpl;

  @override
  bool get bluetooth;
  @override
  bool get bluetoothHeadSet;
  @override
  bool get mobileNetwork;
  @override
  bool get wifiNetwork;
  @override
  bool get hasInternet;
  @override
  @JsonKey(ignore: true)
  _$$DeviceStatusStateImplCopyWith<_$DeviceStatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

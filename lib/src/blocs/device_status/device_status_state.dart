part of 'device_status_cubit.dart';

@freezed
class DeviceStatusState with _$DeviceStatusState {
  const factory DeviceStatusState({
    required bool bluetooth,
    required bool bluetoothHeadSet,
    required bool mobileNetwork,
    required bool wifiNetwork,
    required bool hasInternet,
  }) = _DeviceStatusState;

  factory DeviceStatusState.empty() => const DeviceStatusState(
        bluetooth: false,
        bluetoothHeadSet: false,
        mobileNetwork: false,
        wifiNetwork: false,
        hasInternet: false,
      );
}

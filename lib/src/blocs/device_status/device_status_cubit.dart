import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core_sdk/common/common.dart';

part 'device_status_state.dart';
part 'device_status_cubit.freezed.dart';

class DeviceStatusCubit extends Cubit<DeviceStatusState> {
  StreamSubscription<List<ConnectivityResult>>? _subscription;
  DeviceStatusCubit() : super(DeviceStatusState.empty());

  Future<void> init() async {
    _subscription =
        Connectivity().onConnectivityChanged.listen(_handleConnectionChange);
  }

  Future<void> _handleConnectionChange(List<ConnectivityResult> result) async {
    final bluetooth = result.contains(ConnectivityResult.bluetooth);
    final bluetoothHeadSet =
        bluetooth ? await _isBluetoothHeadSetConnected() : false;
    final mobileNetwork = result.contains(ConnectivityResult.mobile);
    final wifiNetwork = result.contains(ConnectivityResult.wifi);
    emit(state.copyWith(
      bluetooth: bluetooth,
      bluetoothHeadSet: bluetoothHeadSet,
      mobileNetwork: mobileNetwork,
      wifiNetwork: wifiNetwork,
      hasInternet: await _isInternetConnected(mobileNetwork, wifiNetwork),
    ));
  }

  Future<bool> _isBluetoothHeadSetConnected() async {
    return false;
  }

  Future<bool> _isInternetConnected(
      bool mobileNetwork, bool wifiNetwork) async {
    //Check if there is a network connection
    if (!mobileNetwork && !wifiNetwork) return false;
    return await InternetUtils.isInternetConnected();
  }

  @override
  Future<void> close() async {
    _subscription?.cancel();
    super.close();
  }
}

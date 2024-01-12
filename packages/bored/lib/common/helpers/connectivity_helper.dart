import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ConnectivityStatus { isConnected, isDisconnected, notDetermined }

class ConnectivityStatusNotifier extends StateNotifier<ConnectivityStatus> {
  StreamController<ConnectivityResult> controller =
      StreamController<ConnectivityResult>();
  ConnectivityStatus? lastState;
  ConnectivityStatus? newState;
  bool isChecked = false;

  ConnectivityStatusNotifier() : super(ConnectivityStatus.isDisconnected) {
    if (state == ConnectivityStatus.isDisconnected) {
      lastState = ConnectivityStatus.isDisconnected;
    } else {
      lastState = ConnectivityStatus.isConnected;
    }

    lastState = ConnectivityStatus.notDetermined;

    Connectivity().onConnectivityChanged.listen((event) {
      switch (event) {
        case ConnectivityResult.mobile:
        case ConnectivityResult.wifi:
          newState = ConnectivityStatus.isConnected;
          break;
        case ConnectivityResult.none:
          newState = ConnectivityStatus.isDisconnected;
          break;
        default:
          newState = ConnectivityStatus.notDetermined;
          break;
      }

      // jika state sebelumnya tidak sama dengan state sekarang
      if (lastState != newState) {
        state = newState!;
        lastState = newState!;
      }
    });
  }

  void isCheck(bool isChecked) {
    this.isChecked = isChecked;
  }
}

final connectivityStatusProvider =
    StateNotifierProvider((ref) => ConnectivityStatusNotifier());

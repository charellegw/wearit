import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wearit/utils/popups/loaders.dart';

class TNetworkManager extends GetxController {
  static TNetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  /// Init: Network manager and set up a stream to continually checking connection status.
  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  /// Update the connection status based on connection changes and then displaying snackbar popup.
  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;
    if (_connectionStatus.value == ConnectivityResult.none) {
      TLoaders.cautionSnackBar(title: 'No Internet Connection!');
    }
  }

  /// Checking the internet connection status.
  /// 
  /// Return type: boolean
  ///   - 'true' if connected with internet.
  ///   - otherwise 'false'.
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();

      if (result == ConnectivityResult.none) { 
        return false;
      } else { 
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }

  /// Closing active connectivity stream.
  @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }
  
}
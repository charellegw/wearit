import 'package:get/get.dart';
import 'package:wearit/utils/networks/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TNetworkManager());
  }
}
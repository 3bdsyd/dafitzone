import 'package:dafitzone/core/constants/app_package.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RootControllerImp());
  }
}

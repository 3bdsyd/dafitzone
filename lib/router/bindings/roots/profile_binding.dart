import 'package:dafitzone/core/constants/app_package.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileControllerImp());
  }
}

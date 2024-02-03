import 'package:dafitzone/core/constants/app_package.dart';

class CrudBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
import 'package:dafitzone/core/constants/app_package.dart';

class ProfileScreen extends GetView<ProfileControllerImp> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileControllerImp());
    return GetBuilder<ProfileControllerImp>(
      builder: (_) => CustomHandlingView(
        statusRequest: controller.statusRequest,
        basicWidget: const ProfileBasicWidget(),
        loadingWidget: const ProfileLoadingWidget(),
        offlineWidget: const CustomOffline(),
        errorWidget: const CustomError(),
      ),
    );
  }
}

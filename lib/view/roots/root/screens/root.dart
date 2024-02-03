import 'package:dafitzone/core/constants/app_package.dart';
import 'package:dafitzone/view/roots/root/widgets/root_appbar.dart';

class RootScreen extends GetView<RootControllerImp> {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        appBar: rootAppBarWidget(),
        bottomNavigationBar: const RootBottomNavBarWidget(),
        body: GetBuilder<RootControllerImp>(
          builder: (_) => IndexedStack(
            index: controller.selectedPage,
            children: controller.navScreens,
          ),
        ),
      ),
    );
  }
}

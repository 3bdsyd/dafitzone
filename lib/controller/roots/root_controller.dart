import 'package:dafitzone/core/constants/app_package.dart';

abstract class RootController extends GetxController {
  // Select the current page
  void selectPage(final int index);
}

class RootControllerImp extends RootController {
  final List<Widget> navScreens = [
    // HomeScreen(),
    // OfferScreen(),
    // HelpScreen(),
    const ProfileScreen(),
    const ProfileScreen(),
    const ProfileScreen(),
    const ProfileScreen(),
    const DetailsProductScreen(),
  ];

  int selectedPage = 1;
  int selectedActivePage = 1;

  @override
  void selectPage(final int index) {
    selectedPage = index;
    if(index < 4) selectedActivePage = index;
    update();
  }
}

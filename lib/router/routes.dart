import 'package:dafitzone/core/constants/app_package.dart';

class Routes {
  static final List<GetPage<dynamic>> getPages = [
    GetPage(
      name: AppNameScreen.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppNameScreen.rootScreen,
      page: () => const RootScreen(),
      binding: RootBinding(),
    ),
  ];
}

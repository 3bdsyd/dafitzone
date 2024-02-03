import 'package:dafitzone/core/constants/app_package.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          locale: const Locale('ar'),
          theme: AppTheme.themeData,
          debugShowCheckedModeBanner: false,
          getPages: Routes.getPages,
          initialRoute: AppNameScreen.splashScreen,
          initialBinding: CrudBinding(),
        );
      },
    );
  }
}

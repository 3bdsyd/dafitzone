import 'package:dafitzone/core/constants/app_package.dart';

class CustomOffline extends StatelessWidget {
  const CustomOffline({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(AppAnimation.offlineAnimation);
  }
}

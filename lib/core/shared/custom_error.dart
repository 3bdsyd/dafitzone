import 'package:dafitzone/core/constants/app_package.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(AppAnimation.errorAnimation);
  }
}

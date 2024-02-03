import 'package:dafitzone/core/constants/app_package.dart';

class ProfileLoadingWidget extends StatelessWidget {
  const ProfileLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset(AppAnimation.emptyListAnimation));
  }
}

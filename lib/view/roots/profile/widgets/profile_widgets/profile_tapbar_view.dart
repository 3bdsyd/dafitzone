import 'package:dafitzone/core/constants/app_package.dart';

class ProfileTapBarViewWidget extends StatelessWidget {
  const ProfileTapBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: const TabBarView(
          children: [
            ProfileCurrentSystemWidget(),
            ProfilePreviousSystemWidget(),
          ],
        ),
      ),
    );
  }
}

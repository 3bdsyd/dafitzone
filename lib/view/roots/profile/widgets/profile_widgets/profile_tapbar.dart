import 'package:dafitzone/core/constants/app_package.dart';

class ProfileTapBarWidget extends StatelessWidget {
  const ProfileTapBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelStyle: context.textTheme.labelLarge!.copyWith(fontSize: 16),
      labelColor: AppColor.orangeColor,
      indicatorColor: AppColor.orangeColor,
      dividerColor: AppColor.darkColor,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: const [
        Tab(text: 'النظام الحالي'),
        Tab(text: 'الأنظمة السابقة'),
      ],
    );
  }
}

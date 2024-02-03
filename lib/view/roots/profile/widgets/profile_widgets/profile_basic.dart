import 'package:dafitzone/core/constants/app_package.dart';

class ProfileBasicWidget extends GetView<ProfileControllerImp> {
  const ProfileBasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        // allows you to build a list of elements that would be scrolled away till the body reached the top
        headerSliverBuilder: (context, _) {
          return [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, _) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'متوسط نسب الوجبات اليوم',
                        style: context.textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const CustomVertical(height: 5),
                      ProfileAverageRatiosWidget(
                        carp: '${controller.avgCarp}g',
                        calories: '${controller.avgCalories}',
                        proteins: '${controller.avgProteins}g',
                      ),
                      const CustomVertical(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        // You tab view goes here
        body: const Column(
          children: [
            ProfileTapBarWidget(),
            ProfileTapBarViewWidget(),
          ],
        ),
      ),
    );
  }
}

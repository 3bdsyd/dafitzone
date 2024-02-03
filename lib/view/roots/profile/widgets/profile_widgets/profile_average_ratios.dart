import 'package:dafitzone/core/constants/app_package.dart';

class ProfileAverageRatiosWidget extends GetView<ProfileControllerImp> {
  final String carp;
  final String calories;
  final String proteins;

  const ProfileAverageRatiosWidget({
    super.key,
    required this.carp,
    required this.calories,
    required this.proteins,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.grayColor,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          ProfileRatioSection(
            type: 'الكارب',
            value: carp,
          ),
          VerticalDivider(
            thickness: 1.5,
            color: AppColor.grayColor,
          ),
          ProfileRatioSection(
            type: 'سعرات',
            value: calories,
          ),
          VerticalDivider(
            thickness: 1.5,
            color: AppColor.grayColor,
          ),
          ProfileRatioSection(
            type: 'البروتينات',
            value: proteins,
          ),
        ],
      ),
    );
  }
}

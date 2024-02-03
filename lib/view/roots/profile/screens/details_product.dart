import 'package:dafitzone/core/constants/app_package.dart';

class DetailsProductScreen extends GetView<ProfileControllerImp> {
  const DetailsProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: SingleChildScrollView(
        child: GetBuilder<ProfileControllerImp>(
          builder: (_) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileAverageRatiosWidget(
                carp: '${controller.productAvgCarp}g',
                calories: '${controller.productAvgCalories}',
                proteins: '${controller.productAvgProteins}g',
              ),
              const CustomVertical(height: 10),
              DetailsItemPercentagesWidget(
                type: 'البروتينات',
                amount: controller.productProteins.toStringAsFixed(1),
                percent:
                    controller.calculatePercentage(controller.productProteins),
              ),
              DetailsItemPercentagesWidget(
                type: 'سعرات',
                amount: controller.productCalories.toStringAsFixed(1),
                percent:
                    controller.calculatePercentage(controller.productCalories),
              ),
              DetailsItemPercentagesWidget(
                type: 'الكارب',
                amount: controller.productCarp.toStringAsFixed(1),
                percent: controller.calculatePercentage(controller.productCarp),
              ),
              DetailsItemPercentagesWidget(
                type: 'الدهون',
                amount: controller.productFat.toStringAsFixed(1),
                percent: controller.calculatePercentage(controller.productFat),
              ),
              DetailsItemPercentagesWidget(
                type: 'ألياف',
                amount: controller.productFiber.toStringAsFixed(1),
                percent:
                    controller.calculatePercentage(controller.productFiber),
              ),
              DetailsItemPercentagesWidget(
                type: 'السكريات',
                amount: controller.productSugar.toStringAsFixed(1),
                percent:
                    controller.calculatePercentage(controller.productSugar),
              ),
              Divider(
                color: AppColor.grayColor,
                thickness: 3,
              ),
              Text(
                '${controller.productQuantity} قطعة',
                style: context.textTheme.titleLarge!.copyWith(
                  color: AppColor.grayColor,
                ),
              ),
              Text(
                controller.productDescription ?? 'لا توجد ملاحظات',
                style: context.textTheme.titleMedium!.copyWith(
                  color: AppColor.grayColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

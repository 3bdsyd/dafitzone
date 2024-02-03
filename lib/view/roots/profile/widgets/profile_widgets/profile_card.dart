import 'package:dafitzone/core/constants/app_package.dart';

class ProfileCardWidget extends GetView<ProfileControllerImp> {
  final int id;
  final String name;
  final String quantity;
  final String carp;
  final String calories;
  final String proteins;
  final String fat;

  final String fiber;
  final String sugar;
  final String? description;

  const ProfileCardWidget({
    super.key,
    required this.id,
    required this.name,
    required this.quantity,
    required this.carp,
    required this.calories,
    required this.proteins,
    required this.fat,
    required this.fiber,
    required this.sugar,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.orangeColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.close_sharp,
            size: 28,
          ),
          const CustomHorizontal(width: 10),
          Row(
            children: [
              Image.asset(
                AppIcon.appleIcon,
                width: 35,
                height: 35,
              ),
              const CustomHorizontal(width: 10),
              Text(
                name,
                style: context.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const CustomHorizontal(width: 15),
              Text(
                'قطعة x$quantity',
                style: context.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColor.grayColor,
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => {
                  controller.getDetailsProduct(
                    quantity,
                    carp,
                    calories,
                    proteins,
                    fat,
                    fiber,
                    sugar,
                    description,
                  ),
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  textDirection: TextDirection.ltr,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

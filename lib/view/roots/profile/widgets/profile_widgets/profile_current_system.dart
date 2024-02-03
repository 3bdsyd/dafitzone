import 'package:dafitzone/core/constants/app_package.dart';

class ProfileCurrentSystemWidget extends GetView<ProfileControllerImp> {
  const ProfileCurrentSystemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => controller.getData(),
      color: AppColor.orangeColor,
      displacement: 0,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'وجبة الافطار',
              style: context.textTheme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.isMainElement!.dietProgramMeal[0]
                .dietProgramMealElement.length,
            itemBuilder: (context, i) => ProfileCardWidget(
              name: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].foodElement.name,
              quantity: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].quantity,
              id: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].id,
              carp: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].foodElement.carbohydrates,
              calories: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].foodElement.calories,
              proteins: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].foodElement.protein,
              fat: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].foodElement.fat,
              fiber: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].foodElement.fiber,
              sugar: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].foodElement.sugar,
              description: controller.isMainElement!.dietProgramMeal[0]
                  .dietProgramMealElement[i].foodElement.description,
            ),
          ),
          if (controller.isMainElement!.dietProgramMeal.length > 1)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'وجبة الغداء',
                style: context.textTheme.bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          if (controller.isMainElement!.dietProgramMeal.length > 1)
            ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.isMainElement!.dietProgramMeal[1]
                  .dietProgramMealElement.length,
              itemBuilder: (context, i) => ProfileCardWidget(
                name: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].foodElement.name,
                quantity: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].quantity,
                id: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].id,
                carp: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].foodElement.carbohydrates,
                calories: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].foodElement.calories,
                proteins: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].foodElement.protein,
                fat: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].foodElement.fat,
                fiber: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].foodElement.fiber,
                sugar: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].foodElement.sugar,
                description: controller.isMainElement!.dietProgramMeal[1]
                    .dietProgramMealElement[i].foodElement.description,
              ),
            ),
          if (controller.isMainElement!.dietProgramMeal.length > 2)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'وجبة العشاء',
                style: context.textTheme.bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          if (controller.isMainElement!.dietProgramMeal.length > 2)
            ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.isMainElement!.dietProgramMeal[2]
                  .dietProgramMealElement.length,
              itemBuilder: (context, i) => ProfileCardWidget(
                name: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].foodElement.name,
                quantity: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].quantity,
                id: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].id,
                carp: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].foodElement.carbohydrates,
                calories: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].foodElement.calories,
                proteins: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].foodElement.protein,
                fat: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].foodElement.fat,
                fiber: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].foodElement.fiber,
                sugar: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].foodElement.sugar,
                description: controller.isMainElement!.dietProgramMeal[2]
                    .dietProgramMealElement[i].foodElement.description,
              ),
            ),
        ],
      ).animate().fade().slideX(),
    );
  }
}

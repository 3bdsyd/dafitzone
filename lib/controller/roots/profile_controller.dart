import 'package:dafitzone/core/constants/app_package.dart';

abstract class ProfileController extends GetxController {
  Future<void> getData(final int id);
}

class ProfileControllerImp extends ProfileController {
  ProfileData profileData = ProfileData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  List<ProfileModel> profileModelList = [];
  ProfileModel? isMainElement;

  double avgCarp = 0;
  double avgCalories = 0;
  double avgProteins = 0;

  @override
  Future<void> getData([final int? id]) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await profileData.getData();

    statusRequest = handlingData(response);
    update();

    if (StatusRequest.success == statusRequest) {
      List dataList = response['data']['data'];
      profileModelList = dataList.map((e) => ProfileModel.fromJson(e)).toList();
      isMainElement =
          profileModelList.firstWhere((element) => element.isMain == '1');
      calcAvgCarp();
      calcAvgCalories();
      calcAvgProteins();
    }
  }

  void calcAvgCarp() {
    List<List<String>> numbers = isMainElement!.dietProgramMeal
        .map((e) => e.dietProgramMealElement
            .map((e) => e.foodElement.carbohydrates)
            .toList())
        .toList();

    double sum = 0;
    int count = 0;

    for (var sub in numbers) {
      for (var number in sub) {
        sum += num.parse(number);
        count++;
      }
    }
    avgCarp = sum / count;
  }

  void calcAvgCalories() {
    List<List<String>> numbers = isMainElement!.dietProgramMeal
        .map((e) => e.dietProgramMealElement
            .map((e) => e.foodElement.calories)
            .toList())
        .toList();

    double sum = 0;
    int count = 0;

    for (var sub in numbers) {
      for (var number in sub) {
        sum += num.parse(number);
        count++;
      }
    }
    avgCalories = sum / count;
  }

  void calcAvgProteins() {
    List<List<String>> numbers = isMainElement!.dietProgramMeal
        .map((e) =>
            e.dietProgramMealElement.map((e) => e.foodElement.protein).toList())
        .toList();

    double sum = 0;
    int count = 0;

    for (var sub in numbers) {
      for (var number in sub) {
        sum += num.parse(number);
        count++;
      }
    }
    avgProteins = sum / count;
  }

  final RootControllerImp rootController = Get.find<RootControllerImp>();

  double productAvgCarp = 0;
  double productAvgCalories = 0;
  double productAvgProteins = 0;
  String? productDescription = '';
  String productQuantity = '';
  double productProteins = 0;
  double productCalories = 0;
  double productCarp = 0;
  double productFat = 0;
  double productFiber = 0;
  double productSugar = 0;
  double totalQuantities = 0;
  void getDetailsProduct(
    final String quantity,
    final String carp,
    final String calories,
    final String proteins,
    final String fat,
    final String fiber,
    final String sugar,
    final String? description,
  ) {
    int quantityNum = int.parse(quantity);
    productQuantity = quantity;
    productProteins = double.parse(proteins) * quantityNum;
    productCalories = double.parse(calories) * quantityNum;
    productCarp = double.parse(carp) * quantityNum;
    productFat = double.parse(fat) * quantityNum;
    productFiber = double.parse(fiber) * quantityNum;
    productSugar = double.parse(sugar) * quantityNum;
    totalQuantities = productProteins +
        productCalories +
        productCarp +
        productFat +
        productFiber +
        productSugar;
    productDescription = description;
    productAvgCarp = double.parse(carp) * quantityNum / quantityNum;
    productAvgCalories = double.parse(calories) * quantityNum / quantityNum;
    productAvgProteins = double.parse(proteins) * quantityNum / quantityNum;
    update();
    rootController.selectPage(4);
  }

  String calculatePercentage(double value) {
    return '${((value / totalQuantities) * 100).toStringAsFixed(1)}%';
  }

  @override
  void onInit() async {
    await getData();
    super.onInit();
  }
}

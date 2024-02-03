import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  final int id;
  final String programName;
  final dynamic programNote;
  final String isMain;
  final DateTime createdAt;
  final List<DietProgramMeal> dietProgramMeal;

  ProfileModel({
    required this.id,
    required this.programName,
    required this.programNote,
    required this.isMain,
    required this.createdAt,
    required this.dietProgramMeal,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        programName: json["program_name"],
        programNote: json["program_note"],
        isMain: json["is_main"],
        createdAt: DateTime.parse(json["created_at"]),
        dietProgramMeal: List<DietProgramMeal>.from(
            json["diet_program_meal"].map((x) => DietProgramMeal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "program_name": programName,
        "program_note": programNote,
        "is_main": isMain,
        "created_at": createdAt.toIso8601String(),
        "diet_program_meal":
            List<dynamic>.from(dietProgramMeal.map((x) => x.toJson())),
      };
}

class DietProgramMeal {
  final int id;
  final String mealName;
  final List<DietProgramMealElement> dietProgramMealElement;

  DietProgramMeal({
    required this.id,
    required this.mealName,
    required this.dietProgramMealElement,
  });

  factory DietProgramMeal.fromJson(Map<String, dynamic> json) =>
      DietProgramMeal(
        id: json["id"],
        mealName: json["meal_name"],
        dietProgramMealElement: List<DietProgramMealElement>.from(
            json["diet_program_meal_element"]
                .map((x) => DietProgramMealElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "meal_name": mealName,
        "diet_program_meal_element":
            List<dynamic>.from(dietProgramMealElement.map((x) => x.toJson())),
      };
}

class DietProgramMealElement {
  final int id;
  final String quantity;
  final FoodElement foodElement;

  DietProgramMealElement({
    required this.id,
    required this.quantity,
    required this.foodElement,
  });

  factory DietProgramMealElement.fromJson(Map<String, dynamic> json) =>
      DietProgramMealElement(
        id: json["id"],
        quantity: json["quantity"],
        foodElement: FoodElement.fromJson(json["food_element"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quantity": quantity,
        "food_element": foodElement.toJson(),
      };
}

class FoodElement {
  final int id;
  final String foodCategoryId;
  final String name;
  final String description;
  final String calories;
  final String protein;
  final String carbohydrates;
  final String fat;
  final String sugar;
  final String fiber;

  FoodElement({
    required this.id,
    required this.foodCategoryId,
    required this.name,
    required this.description,
    required this.calories,
    required this.protein,
    required this.carbohydrates,
    required this.fat,
    required this.sugar,
    required this.fiber,
  });

  factory FoodElement.fromJson(Map<String, dynamic> json) => FoodElement(
        id: json["id"],
        foodCategoryId: json["food_category_id"],
        name: json["name"],
        description: json["description"],
        calories: json["calories"],
        protein: json["protein"],
        carbohydrates: json["carbohydrates"],
        fat: json["fat"],
        sugar: json["sugar"],
        fiber: json["fiber"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "food_category_id": foodCategoryId,
        "name": name,
        "description": description,
        "calories": calories,
        "protein": protein,
        "carbohydrates": carbohydrates,
        "fat": fat,
        "sugar": sugar,
        "fiber": fiber,
      };
}

class Meal {
  final String idMeal;
  final String strMeal;
  final String? strMealThumb;

  Meal({required this.idMeal, required this.strMeal, this.strMealThumb});

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      idMeal: json['idMeal'] as String,
      strMeal: json['strMeal'] as String,
      strMealThumb: json['strMealThumb'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'idMeal': idMeal, 'strMeal': strMeal, 'strMealThumb': strMealThumb};
  }
}

class MealsResponse {
  final List<Meal> meals;

  MealsResponse({required this.meals});

  factory MealsResponse.fromJson(Map<String, dynamic> json) {
    return MealsResponse(
      meals: (json['meals'] as List<dynamic>).map((e) => Meal.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'meals': meals.map((e) => e.toJson()).toList()};
  }
}

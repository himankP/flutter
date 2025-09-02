class RecipeResponse {
  final List<Recipe> meals;

  RecipeResponse({required this.meals});

  factory RecipeResponse.fromJson(Map<String, dynamic> json) {
    return RecipeResponse(
      meals: (json['meals'] as List<dynamic>).map((e) => Recipe.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}

class Recipe {
  final String idMeal;
  final String strMeal;
  final String? strMealAlternate;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String? strTags;
  final String strYoutube;
  final List<String> ingredients;
  final List<String> measures;
  final String? strSource;
  final String? strImageSource;
  final String? strCreativeCommonsConfirmed;
  final String? dateModified;

  Recipe({
    required this.idMeal,
    required this.strMeal,
    this.strMealAlternate,
    required this.strCategory,
    required this.strArea,
    required this.strInstructions,
    required this.strMealThumb,
    this.strTags,
    required this.strYoutube,
    required this.ingredients,
    required this.measures,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    List<String> ingredients = [];
    List<String> measures = [];
    for (int i = 1; i <= 20; i++) {
      final ingredient = json['strIngredient$i'] as String? ?? '';
      final measure = json['strMeasure$i'] as String? ?? '';
      if (ingredient.trim().isNotEmpty) {
        ingredients.add(ingredient);
        measures.add(measure);
      }
    }
    return Recipe(
      idMeal: json['idMeal'] as String,
      strMeal: json['strMeal'] as String,
      strMealAlternate: json['strMealAlternate'] as String?,
      strCategory: json['strCategory'] as String,
      strArea: json['strArea'] as String,
      strInstructions: json['strInstructions'] as String,
      strMealThumb: json['strMealThumb'] as String,
      strTags: json['strTags'] as String?,
      strYoutube: json['strYoutube'] as String,
      ingredients: ingredients,
      measures: measures,
      strSource: json['strSource'] as String?,
      strImageSource: json['strImageSource'] as String?,
      strCreativeCommonsConfirmed: json['strCreativeCommonsConfirmed'] as String?,
      dateModified: json['dateModified'] as String?,
    );
  }
}

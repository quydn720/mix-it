class DrinkModel {
  final String drinkName;
  final String instructions;
  final String imageUrl;
  final List<String> ingredients;

  DrinkModel({
    required this.drinkName,
    required this.instructions,
    required this.imageUrl,
    required this.ingredients,
  });

  factory DrinkModel.fromJson(dynamic json) {
    return DrinkModel(
      drinkName: json['strDrink'],
      instructions: json['strInstructions'],
      imageUrl: json['strDrinkThumb'],
      ingredients: json['strIngredient1'],
    );
  }
}

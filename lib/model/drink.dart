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
    // TODO: Add function to convert the ingredient from the json to list of string
    final drink = json['drinks'][0];
    final ingredientList = <String>[];
    ingredientList.add(drink['strIngredient1']);
    return DrinkModel(
      drinkName: drink['strDrink'],
      instructions: drink['strInstructions'],
      imageUrl: drink['strDrinkThumb'],
      ingredients: ingredientList,
    );
  }
}

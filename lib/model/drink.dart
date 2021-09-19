class DrinkModel {
  final String drinkName;
  final String instructions;
  final String imageUrl;
  final List<String>
      ingredients; // Measurement + Ingredient name // 1/2 oz Tequila

  DrinkModel({
    required this.drinkName,
    required this.instructions,
    required this.imageUrl,
    required this.ingredients,
  });

  factory DrinkModel.fromJson(dynamic json) {
    final drink = json['drinks'][0];

    // String concat for full meaning
    final ingredientList = <String>[];
    for (int i = 1;; i++) {
      if (drink['strIngredient$i'] != null) {
        String ingredient = drink['strIngredient$i'];

        final String? ingredientMeasure = drink['strMeasure$i'];
        ingredient = (ingredientMeasure != null)
            ? ingredientMeasure + ingredient
            : ingredient;
        ingredientList.add(ingredient);
      } else
        break;
    }
    return DrinkModel(
      drinkName: drink['strDrink'],
      instructions: drink['strInstructions'],
      imageUrl: drink['strDrinkThumb'],
      ingredients: ingredientList,
    );
  }
}

class Ingredient {
  final int ingredientId;
  final String ingredientName;
  final String ingredientDescription;

  Ingredient(
    this.ingredientId,
    this.ingredientName,
    this.ingredientDescription,
  );
}

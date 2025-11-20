class IngredientModel {
  final String name;
  final int quantity;
  final String imagePath; // Nueva propiedad para la imagen del ingrediente

  IngredientModel({
    required this.name,
    required this.quantity,
    required this.imagePath,
  });
}
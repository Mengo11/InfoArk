// Modelo de datos para representar un Kibble en Ark: Survival Evolved.

class Ingredient {
  final String name;
  final int quantity;
  final String imageUrl; // URL o path local de la imagen del ingrediente

  Ingredient({required this.name, required this.quantity, required this.imageUrl});
}

class KibbleModel {
  final String id;
  final String name;
  final String imageUrl; // URL o path local de la imagen del Kibble
  final String description;
  final String craftingStation; // Ej: Cooking Pot (Olla de Cocina), Industrial Cooker (Cocina Industrial)
  final List<Ingredient> ingredients;
  final String kibbleType; // Ej: Basic, Simple, Regular, Exceptional

  KibbleModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.craftingStation,
    required this.ingredients,
    required this.kibbleType,
  });
}
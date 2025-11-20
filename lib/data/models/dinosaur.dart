import 'boss_info.dart';

// Clase para la comida de Tameo
class TamingFood {
  final String foodName;
  final String imagePath;

  TamingFood({required this.foodName, required this.imagePath});
}

class Dinosaur {
  final String name; // Nombre del dinosaurio, e.g., "Rex"
  final List<String> categories; // Categorías, e.g., ["daño", "terrestre"]
  final List<String> imagePaths; // Rutas de imágenes, e.g., ["assets/images/rex1.png", "assets/images/rex2.png"]

  // Daño y Vida base (opcionales)
  final int? damageBase;
  final int? healthBase;

  final String description; // Descripción detallada

  // Nuevos campos de Utilidad/Tameo
  final bool isMountable;
  final bool isShoulderPet;
  final bool isPassiveTame;
  final List<TamingFood> preferredFoods;
  final String torporDrainInfo;

  // Información de Jefe (null si no es un jefe)
  final BossInfo? bossInfo;

  Dinosaur({
    required this.name,
    required this.categories,
    required this.imagePaths,
    this.damageBase, // Ahora opcional
    this.healthBase, // Ahora opcional
    required this.description,
    // Valores por defecto
    this.isMountable = true,
    this.isShoulderPet = false,
    this.isPassiveTame = false,
    this.preferredFoods = const [],
    this.torporDrainInfo = 'No aplica',
    this.bossInfo,
  });
}
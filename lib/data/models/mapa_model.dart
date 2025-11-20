// Modelo para la información de un jefe (Boss)
class BossInfo {
  final String name;
  final String difficulty; // E.g., Gamma, Beta, Alpha
  final int levelUnlock;    // Niveles que desbloquea al ser derrotado (0 si no desbloquea)

  BossInfo({
    required this.name,
    required this.difficulty,
    this.levelUnlock = 0,
  });
}

// Modelo de datos detallado para representar un Mapa en Ark
class MapaModel {
  final String id;
  final String name;
  final String image; // Ruta del asset de la imagen del mapa (para el GridView)

  final String description;
  final int releaseYear;
  final String difficulty;

  // Lista de URLs para imágenes adicionales de la galería (DetailScreen)
  final List<String> detailImage;

  final List<String> exclusiveEngrams;
  final List<String> bosses;
  final List<String> exclusiveCreatures;
  final List<String> exclusiveResources;

  // Constructor simplificado y corregido
  MapaModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.releaseYear,
    required this.detailImage,
    required this.exclusiveEngrams,
    required this.bosses,
    required this.exclusiveCreatures,
    required this.exclusiveResources,
    required this.difficulty,
    // Eliminamos 'isCanonical' y 'detailImageUrls' redundantes si no se usan
  });
}
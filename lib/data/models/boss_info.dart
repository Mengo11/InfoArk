// Clase para un único requisito (Artifact, Creature Drop, etc.)
class TributeRequirement {
  final String itemName;
  final int quantity;
  final String imagePath; // Ruta del icono del item

  TributeRequirement({
    required this.itemName,
    required this.quantity,
    required this.imagePath,
  });
}

// Clase para el jefe en una dificultad específica (Gamma, Beta, Alpha)
class BossDifficulty {
  final String difficultyName; // Ej: 'Gamma', 'Beta', 'Alpha'
  final int levelUnlocked; // Nivel de jugador requerido
  final int healthBase; // HP base del Boss en esa dificultad
  final List<TributeRequirement> requiredTributes;
  final int elementReward; // Cantidad de Elemento que otorga

  BossDifficulty({
    required this.difficultyName,
    required this.levelUnlocked,
    required this.healthBase,
    required this.requiredTributes,
    required this.elementReward,
  });
}

// Clase principal que se agregará al modelo Dinosaur (si es un jefe)
class BossInfo {
  final List<BossDifficulty> difficulties;

  BossInfo({required this.difficulties});

  get name => null;
}
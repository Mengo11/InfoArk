import '../data/models/dinosaur.dart';
import 'data_sources/dinos_voladores.dart'; // Voladores
import 'data_sources/melee_dinos.dart'; // Acuáticos
import 'data_sources/dinos_acuaticos.dart'; // Acuáticos
import 'data_sources/boss_dinos.dart'; // Jefes

// Definición de las categorías disponibles
final List<String> categories = [
  'voladores',
  'daño',
  'acuáticos',
  'boses',
];

final List<Dinosaur> allDinosaurs = [
  ...flyerDinos,
  ...bossDinos,
  ...damageDinos,
  ...aquaticDinos,
];




// Función helper para filtrar por categoría
List<Dinosaur> getDinosaursByCategory(String category) {
  return allDinosaurs.where((dino) => dino.categories.contains(category)).toList();
}
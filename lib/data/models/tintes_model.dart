import 'package:flutter/material.dart';
import 'dye_model.dart';
import 'ingredient_model.dart'; // Importamos el modelo de ingrediente

class TinteDataSource {

  // Función auxiliar para crear un ingrediente con ruta predeterminada
  static IngredientModel _createIngredient(String name, int quantity, String path) {
    return IngredientModel(
      name: name,
      quantity: quantity,
      imagePath: path,
    );
  }

  // Rutas comunes
  static const String _aguaPath = 'assets/images/Consumibles/agua.webp';
  static const String _charcoalPath = 'assets/images/Recurso/Charcoal.webp';
  static const String _amarPath = 'assets/images/Consumibles/Amarberry.webp';
  static const String _tintoPath = 'assets/images/Consumibles/Tintoberry.webp';
  static const String _azulPath = 'assets/images/Consumibles/Mejoberry.webp'; // Usando Mejoberry como proxy para Azulberry
  static const String _stimPath = 'assets/images/Consumibles/Stimberry.webp';
  static const String _narcoPath = 'assets/images/Consumibles/Narcoberry.webp';

  static final List<DyeModel> tintesList = [
    // ------------------------------------------------------------------
    // 1-5. TINTES ORIGINALES (CORREGIDOS)
    // ------------------------------------------------------------------
    DyeModel(
      name: 'Azul',
      color: Colors.blue, // CORREGIDO
      description: 'Un tinte de tono celeste, ideal para el agua y el cielo.',
      image: 'assets/images/Tintes/Color_Azul.webp',
      ingredients: [
        _createIngredient('Azulberry', 15, _azulPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Carbón', 2, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Blanco',
      color: Colors.white, // CORREGIDO
      description: 'Un tinte puro, a menudo utilizado para camuflaje en nieve o para resaltar detalles.',
      image: 'assets/images/Tintes/Color_Blanco.webp',
      ingredients: [
        _createIngredient('Stimberry', 15, _stimPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Carbón', 2, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Negro',
      color: Colors.black, // CORREGIDO
      description: 'El tinte más oscuro, perfecto para infiltración nocturna.',
      image: 'assets/images/Tintes/Color_Negro.webp',
      ingredients: [
        _createIngredient('Narcoberry', 15, _narcoPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Carbón', 2, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Rojo',
      color: Colors.red, // CORREGIDO
      description: 'Un tinte carmesí que simboliza la ferocidad. Popular para monturas de combate y armaduras.',
      image: 'assets/images/Tintes/Color_Rojo.webp',
      ingredients: [
        _createIngredient('Tintoberry', 15, _tintoPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Carbón', 2, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Rosa',
      color: Colors.pink, // CORREGIDO (basado en la receta de Dododex)
      description: 'Un tinte vibrante y llamativo. Ideal para monturas de exhibición.',
      image: 'assets/images/Tintes/Color_Rosa.webp',
      ingredients: [
        _createIngredient('Tintoberry', 12, _tintoPath),
        _createIngredient('Stimberry', 6, _stimPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Pólvora / Polvo de Chispa', 1, _charcoalPath),
      ],
    ),
    // ------------------------------------------------------------------
    // 6-25. TINTES ADICIONALES (20 nuevos)
    // ------------------------------------------------------------------
    DyeModel(
      name: 'Amarillo',
      color: Colors.yellow,
      description: 'Un tinte brillante y vibrante, ideal para hacer que tus estructuras o monturas destaquen.',
      image: 'assets/images/Tintes/Color_Amarillo.webp',
      ingredients: [
        _createIngredient('Amarberry', 15, _amarPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Carbón', 2, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Verde',
      color: Colors.green,
      description: 'El color de la naturaleza, perfecto para camuflarse en el follaje.',
      image: 'assets/images/Tintes/Color_Verde.webp',
      ingredients: [
        _createIngredient('Amarberry', 9, _amarPath),
        _createIngredient('Azulberry', 9, _azulPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Carbón', 2, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Púrpura',
      color: Colors.purple,
      description: 'Una mezcla de azul y rojo, creando un tinte regio y distintivo.',
      image: 'assets/images/Tintes/Color_Purpura.webp',
      ingredients: [
        _createIngredient('Azulberry', 9, _azulPath),
        _createIngredient('Tintoberry', 9, _tintoPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Carbón', 2, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Naranja',
      color: Colors.orange,
      description: 'El tinte del atardecer. Llamativo y utilizado a menudo en estructuras.',
      image: 'assets/images/Tintes/Color_Naranja.webp',
      ingredients: [
        _createIngredient('Amarberry', 9, _amarPath),
        _createIngredient('Tintoberry', 9, _tintoPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Carbón', 2, _charcoalPath),
      ],
    ),

    DyeModel(
      name: 'Cian',
      color: Colors.cyan,
      description: 'El tinte turquesa, ideal para estructuras cerca del agua o en ambientes tropicales.',
      image: 'assets/images/Tintes/Color_Cyan.webp',
      ingredients: [
        _createIngredient('Azulberry', 12, _azulPath),
        _createIngredient('Amarberry', 6, _amarPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Pólvora / Polvo de Chispa', 1, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Verde Bosque',
      color: const Color(0xFF228B22), // Forest Green
      description: 'Un verde profundo, excelente para un camuflaje denso en la selva.',
      image: 'assets/images/Tintes/Color_Verde_bosque.webp',
      ingredients: [
        _createIngredient('Amarberry', 7, _amarPath),
        _createIngredient('Azulberry', 7, _azulPath),
        _createIngredient('Narcoberry', 4, _narcoPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Pólvora / Polvo de Chispa', 1, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Oliva',
      color: const Color(0xFF808000), // Olive
      description: 'Un tono militar y apagado, útil para estructuras defensivas.',
      image: 'assets/images/Tintes/Color_Olivia.webp',
      ingredients: [
        _createIngredient('Amarberry', 12, _amarPath),
        _createIngredient('Narcoberry', 6, _narcoPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Pólvora / Polvo de Chispa', 1, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Magenta',
      color: Colors.deepPurpleAccent,
      description: 'Un rosa intenso y oscuro. Muy popular para monturas exóticas.',
      image: 'assets/images/Tintes/Color_Magenta.webp',
      ingredients: [
        _createIngredient('Azulberry', 9, _azulPath),
        _createIngredient('Tintoberry', 9, _tintoPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Pólvora / Polvo de Chispa', 1, _charcoalPath),
      ],
    ),

    DyeModel(
      name: 'Marrón',
      color: const Color(0xFF964B00), // Brown
      description: 'El tinte de la tierra, ideal para mimetizarse en la mayoría de los biomas.',
      image: 'assets/images/Tintes/Color_Marron.webp',
      ingredients: [
        _createIngredient('Tintoberry', 9, _tintoPath),
        _createIngredient('Amarberry', 6, _amarPath),
        _createIngredient('Azulberry', 3, _azulPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Carbón', 2, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Pizarra',
      color: const Color(0xFF708090), // Slate Gray
      description: 'Un gris oscuro y frío, excelente para simular piedra y metal.',
      image: 'assets/images/Tintes/Color_Pizarra.webp',
      ingredients: [
        _createIngredient('Narcoberry', 12, _narcoPath),
        _createIngredient('Stimberry', 6, _stimPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Pólvora / Polvo de Chispa', 1, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Plata',
      color: const Color(0xFFC0C0C0), // Silver
      description: 'Un tinte metálico y reflectante, muy popular para armaduras y armas.',
      image: 'assets/images/Tintes/Color_Plata.webp',
      ingredients: [
        _createIngredient('Narcoberry', 6, _narcoPath),
        _createIngredient('Stimberry', 12, _stimPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Pólvora / Polvo de Chispa', 1, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Azul Marino',
      color: const Color(0xFF000080), // Navy Blue
      description: 'Un azul muy oscuro, casi negro, ideal para el océano profundo.',
      image: 'assets/images/Tintes/Color_Azul_marino.webp',
      ingredients: [
        _createIngredient('Azulberry', 12, _azulPath),
        _createIngredient('Narcoberry', 6, _narcoPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Pólvora / Polvo de Chispa', 1, _charcoalPath),
      ],
    ),
    DyeModel(
      name: 'Morado',
      color: const Color(0xFF4B0082), // Dark Purple
      description: 'Un tono más oscuro y místico de púrpura, excelente para estructuras imponentes.',
      image: 'assets/images/Tintes/Color_Morado.webp',
      ingredients: [
        _createIngredient('Azulberry', 7, _azulPath),
        _createIngredient('Tintoberry', 7, _tintoPath),
        _createIngredient('Narcoberry', 4, _narcoPath),
        _createIngredient('Agua', 1, _aguaPath),
        _createIngredient('Pólvora / Polvo de Chispa', 1, _charcoalPath),
      ],
    ),

  ];
}
// lib/data/data_sources/kibble_data_source.dart

import '../models/kibble_model.dart';

class KibbleDataSource {
  // Datos de ejemplo para los diferentes tipos de Kibble
  static List<KibbleModel> kibblesList = [
    KibbleModel(
      id: 'basic',
      name: 'Kibble Básico',
      kibbleType: 'Básico',
      // Cambiar a ruta de activo local: assets/images/kibbles/basic.png
      imageUrl: 'assets/images/kibbles/Kibble.webp',
      description: 'El Kibble más simple, utilizado para domesticar criaturas pequeñas.',
      craftingStation: 'Olla de Cocina (Cooking Pot)',
      ingredients: [
        Ingredient(
            name: 'Huevo Extrachico',
            quantity: 1,
            // Cambiar a ruta de activo local: assets/images/ingredients/extra_small_egg.png
            imageUrl: 'assets/images/Consumibles/extra small.webp'),
        Ingredient(
            name: 'Carne Cocinada',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Carne_cosinada.webp'),
        Ingredient(
            name: 'Mejoberry',
            quantity: 5,
            imageUrl: 'assets/images/Consumibles/Mejoberry.webp'),
        Ingredient(
            name: 'Amaberry',
            quantity: 10,
            imageUrl: 'assets/images/Consumibles/Amarberry.webp'),
        Ingredient(
            name: 'Fibra',
            quantity: 5,
            imageUrl: 'assets/images/Recurso/Fibra.webp'),
        Ingredient(
            name: 'Agua',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/agua.webp'),
      ],
    ),
    KibbleModel(
      id: 'simple',
      name: 'Kibble Simple',
      kibbleType: 'Simple',
      // Cambiar a ruta de activo local
      imageUrl: 'assets/images/kibbles/Simple_Kibble.webp',
      description: 'Un Kibble de nivel medio, excelente para domesticar criaturas comunes.',
      craftingStation: 'Olla de Cocina (Cooking Pot)',
      ingredients: [
        Ingredient(
            name: 'Huevo Pequeño',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/small.webp'),
        Ingredient(
            name: 'Pescado Cosinado',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Pescado_Cosinado.webp'),
        Ingredient(
            name: 'Zanahorias',
            quantity: 2,
            imageUrl: 'assets/images/Consumibles/Zanahorias.webp'),
        Ingredient(
            name: 'Mejobery',
            quantity: 5,
            imageUrl: 'assets/images/Consumibles/Mejobery.webp'),
        Ingredient(
            name: 'Fibra',
            quantity: 5,
            imageUrl: 'assets/images/Recurso/Fibra.webp'),
        Ingredient(
            name: 'Agua',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/agua.webp'),
      ],
    ),
    KibbleModel(
      id: 'Regular',
      name: 'Kibble Regular',
      kibbleType: 'Regular',
      // Cambiar a ruta de activo local
      imageUrl: 'assets/images/kibbles/Regular_Kibble.webp',
      description: 'El Kibble de mayor calidad, para las criaturas más difíciles de domesticar.',
      craftingStation: 'Cocina Industrial (Industrial Cooker)',
      ingredients: [
        Ingredient(
            name: 'Huevo Mediano',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Medium.webp'),
        Ingredient(
            name: 'Carne seca',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Carne_seca.webp'),
        Ingredient(
            name: 'Choclo',
            quantity: 2,
            imageUrl: 'assets/images/Consumibles/Choclo.webp'),
        Ingredient(
            name: 'Papa',
            quantity: 2,
            imageUrl: 'assets/images/Consumibles/Papa.webp'),
        Ingredient(
            name: 'fibra',
            quantity: 5,
            imageUrl: 'assets/images/Recurso/Fibra.webp'),
        Ingredient(
            name: 'Agua',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/agua.webp'),
      ],
    ),
    KibbleModel(
      id: 'Superior',
      name: 'Kibble Superior',
      kibbleType: 'Superior',
      // Cambiar a ruta de activo local
      imageUrl: 'assets/images/kibbles/Superior_Kibble.webp',
      description: 'El Kibble de mayor calidad, para las criaturas más difíciles de domesticar.',
      craftingStation: 'Cocina Industrial (Industrial Cooker)',
      ingredients: [
        Ingredient(
            name: 'Huevo Grande',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Largue.webp'),
        Ingredient(
            name: 'Carne seca ',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Carne_seca.webp'),
        Ingredient(
            name: 'Limon',
            quantity: 2,
            imageUrl: 'assets/images/Consumibles/Limon.webp'),
        Ingredient(
            name: 'Zetas raras',
            quantity: 2,
            imageUrl: 'assets/images/Consumibles/Rare_Mushroom.webp'),
        Ingredient(
            name: 'Fibra',
            quantity: 5,
            imageUrl: 'assets/images/Recurso/Fibra.webp'),
        Ingredient(
            name: 'Agua',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/agua.webp'),
      ],
    ),
    KibbleModel(
      id: 'Excepcional',
      name: 'Kibble Excepcional',
      kibbleType: 'Excepcional',
      // Cambiar a ruta de activo local
      imageUrl: 'assets/images/kibbles/Exceptional_Kibble.webp',
      description: 'El Kibble de mayor calidad, para las criaturas más difíciles de domesticar.',
      craftingStation: 'Cocina Industrial (Industrial Cooker)',
      ingredients: [
        Ingredient(
            name: 'Huevo ExtraGrande',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Extra Largue.webp'),
        Ingredient(
            name: 'Chili',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Chili.webp'),
        Ingredient(
            name: 'Flor rara',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Flor_rara.webp'),
        Ingredient(
            name: 'Mejoberry',
            quantity: 10,
            imageUrl: 'assets/images/Consumibles/Mejoberry.webp'),
        Ingredient(
            name: 'Fibra',
            quantity: 5,
            imageUrl: 'assets/images/Recurso/Fibra.webp'),
        Ingredient(
            name: 'Agua',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/agua.webp'),
      ],
    ),
    KibbleModel(
      id: 'Extraordinario',
      name: 'Kibble Extraordinario',
      kibbleType: 'Extraordinario',
      // Cambiar a ruta de activo local
      imageUrl: 'assets/images/kibbles/Extraordinary_Kibble.webp',
      description: 'El Kibble de mayor calidad, para las criaturas más difíciles de domesticar.',
      craftingStation: 'Cocina Industrial (Industrial Cooker)',
      ingredients: [
        Ingredient(
            name: 'Huevo Especial',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Special.webp'),
        Ingredient(
            name: 'Miel ',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Giant_Bee_Honey.webp'),
        Ingredient(
            name: 'Limon',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/Lazarus_Chowder.webp'),
        Ingredient(
            name: 'Mejoberry',
            quantity: 10,
            imageUrl: 'assets/images/Consumibles/Mejoberry.webp'),
        Ingredient(
            name: 'Fibra',
            quantity: 5,
            imageUrl: 'assets/images/Recurso/Fibra.webp'),
        Ingredient(
            name: 'Agua',
            quantity: 1,
            imageUrl: 'assets/images/Consumibles/agua.webp'),
      ],
    ),// Agrega más Kibbles aquí...
  ];
}
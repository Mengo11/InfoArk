import '../models/mapa_model.dart';

class MapasData { // Clase de datos
  static List<MapaModel> allArkMaps = [
    MapaModel(
      id: 'the_island',
      name: 'The Island',
      image: 'assets/images/Mapas/Theisland_map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'El mapa original de ARK, lleno de misterios y desafíos.',
      difficulty: 'Media',
      releaseYear: 2015,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      // The Island no tiene engramas o criaturas que solo se desbloqueen en este mapa, aparte del Elemento y los Jefes (que ya están en Bosses).
      exclusiveEngrams: ['No hay Engramas exclusivos de The Island'],
      bosses: [
        'Broodmother Lysrix',
        'Megapithecus',
        'Dragon',
        'Overseer'
      ],
      exclusiveCreatures: ['No hay Criaturas exclusivas de The Island'],
      exclusiveResources: ['Elemento (obtenido de Bosses/Tek Cave)'],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'Scorched_Earth',
      name: 'Scorched Earth',
      image: 'assets/images/Mapas/Scorched_Earth_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'Cuidado! Este mapa es un desierto muy hostil. con un clima muy extremo: tormentas de arena, calor intenso, tormentas eléctricas. El agua es muy escasa y el calor es un gran desafío.',
      difficulty: 'Alta',
      releaseYear: 2016,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: [
        'Látigo',
        'Bumerán',
        'Cantimplora',
        'Tienda de Campaña',
        'Conjunto de armadura del Desierto'
      ],
      bosses: [
        'Manticore'
      ],
      exclusiveCreatures: [
        'Rock Elemental',
        'Wyvern de Fuego/Rayo/Veneno',
        'Morellatops',
        'Vulture',
        'Jerboa'
      ],
      exclusiveResources: [
        'Petróleo (de Morellatops)',
        'Seda',
        'Sal',
        'Arena'
      ],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'The_Center',
      name: 'The Center ',
      image: 'assets/images/Mapas/The_Center_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'Es un mapa más grande,con hermosos biomas , una isla flotante y su bioma del centro del mundo tambien hay biomas variados: montañas, cuevas, zonas subterráneas, y una isla flotante',
      difficulty: 'media',
      releaseYear: 2016,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: ['No hay Engramas exclusivos de The Center'],
      bosses: [
        'Broodmother/Megapithecus (Doble Jefe)'
      ],
      exclusiveCreatures: ['No hay Criaturas exclusivas de The Center'],
      exclusiveResources: ['No hay Recursos exclusivos de The Center'],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'Ragnarok',
      name: 'Ragnarok',
      image: 'assets/images/Mapas/Ragnarok_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'Un mapa con una ambientacion tipo “nórdico / vikingo”, con dinosaurios de scorched en su zona desiertica: con biomas como montañas, bosques, volcanes, ruinas, cuevas y zona de hielo',
      difficulty: 'Alta',
      releaseYear: 2017,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: ['No hay Engramas exclusivos de Ragnarok'],
      bosses: [
        'Manticore/Dragon (Doble Jefe)',
        'Ice Wyvern'
      ],
      exclusiveCreatures: [
        'Ice Wyvern (Nido)',
        'Gryphon'
      ],
      exclusiveResources: ['No hay Recursos exclusivos de Ragnarok'],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'Aberration',
      name: 'Aberration',
      image: 'assets/images/Mapas/Aberration_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'Es un Mapa “dañado”, muy centrado en cuevas subterráneas. contando con radiación, terremotos, biomas luminosos, hongos peligrosos, zonas tóxicas. caracteristicos por su criaturas unicas y zonas muy peligrosos',
      difficulty: 'Muy alta',
      releaseYear: 2017,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: [
        'Zip-Line Motorized',
        'Traje de Hazmat',
        'Rifle de Riel',
        'Batería de Carga'
      ],
      bosses: [
        'Rockwell'
      ],
      exclusiveCreatures: [
        'Rock Drake',
        'Reaper King/Queen',
        'Bulbdog',
        'Roll Rat',
        'Karkinos'
      ],
      exclusiveResources: [
        'Hongo de Cristal',
        'Gema Azul/Verde/Roja',
        'Linternas de Carga'
      ],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'Extinction',
      name: 'Extinction', // Corregido el nombre
      image: 'assets/images/Mapas/Extinction_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'Es un mapa post-apocalíptico ambientado en la Tierra “corrupta” (“Corrupted Earth”). Mezcla zonas tecnológicas y orgánicas, con proto-ARKs, ciudades destruidas, domos biomas, y caracteristicas craturas corruptas o sus temidos Titanes',
      difficulty: 'Muy alta',
      releaseYear: 2018,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: [
        'Mek',
        'Escudo de Defensa Urbano',
        'Bala de Elemento',
        'Orbital Supply Drops'
      ],
      bosses: [
        'King Titan',
        'Titan del Desierto',
        'Titan del Bosque',
        'Titan de Hielo'
      ],
      exclusiveCreatures: [
        'Gacha',
        'Snow Owl',
        'Managarmr',
        'Velonasaurio',
        'Criaturas Corruptas'
      ],
      exclusiveResources: [
        'Elemento Polvo',
        'Fragmento de Elemento (del bioma)',
        'Nodos de Elemento'
      ],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'Genesis (Part 1)',
      name: 'Genesis (Part 1)',
      image: 'assets/images/Mapas/Genesis_Part_1_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'Es una “simulación” con varios biomas muy distintos: pantano, nieve, océano, volcánico y un bioma tipo luna con menor gravedad. Además se viaja entre estos biomas mediante un dispositivo llamado HLNA.',
      difficulty: 'Alta',
      releaseYear: 2020,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: [
        'Hover-Skiff',
        'Cañón de Red de Pesca',
        'Armadura de Buceo',
        'Canoa'
      ],
      bosses: [
        'Moeder, la Matriz de Agua',
        'Corrupted Master Controller'
      ],
      exclusiveCreatures: [
        'Ferox',
        'Bloodstalker',
        'Megachelon',
        'Astrocetus',
        'Magmasaurio'
      ],
      exclusiveResources: [
        'Hexágonos (Moneda)',
        'Pólvora de Fuego',
        'Fragmento de Telaraña'
      ],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'Crystal Isles',
      name: 'Crystal Isles',
      image: 'assets/images/Mapas/Crystal_Isles_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'Es una isla con un tema “fantasía mística”: con hermosos paisajes como islas flotantes, una gran colmena de abejas, cavernas brillantes, zonas oscuras y truenos, burbujas de agua en el aire. ',
      difficulty: 'media',
      releaseYear: 2020,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: ['No hay Engramas exclusivos de Crystal Isles'],
      bosses: [
        'Beta Crystal Wyvern Queen'
      ],
      exclusiveCreatures: [
        'Tropical Crystal Wyvern',
        'Ember Crystal Wyvern',
        'Blood Crystal Wyvern',
        'Apis (Abeja Gigante)'
      ],
      exclusiveResources: ['Cristal Wyvern Eggs'],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'Valguero',
      name: 'Valguero',
      image: 'assets/images/Mapas/Valguero_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'Un mapa con biomas variados que incluyen un desierto (similar a Scorched Earth), un bioma de tiza y la vasta "Aberration Zone" subterránea.',
      difficulty: 'Alta',
      releaseYear: 2019,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: ['No hay Engramas exclusivos de Valguero'],
      bosses: [
        'Dragon/Manticore/Megapithecus (Triple Jefe)'
      ],
      exclusiveCreatures: [
        'Deinonychus',
        'Alas de Aberration (Reaper, Rock Drake, etc. disponibles)'
      ],
      exclusiveResources: ['Huevo de Deinonychus'],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'Genesis: Parte 2',
      name: 'Genesis: Parte 2',
      image: 'assets/images/Mapas/Genesis_Part_2_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'El mapa de Genesis Parte 2 está ambientado en una gigantesca nave que viaja por el espacio. Dividida por dos “anillos”: uno “normal” con biomas verde más normales y otro “corrupto” con dinosaurios muy hostiles. Contando con misiones donde se podrán ganar grandes recompensas (hunt, gauntlet, carreras, etc.) como, hexágonos, mejoras y recursos.',
      difficulty: 'Alta',
      releaseYear: 2021,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: [
        'Traje Tek de Mutagen',
        'Astrodelphis Saddle (Silla)',
        'Tek Pistosaurio'
      ],
      bosses: [
        'Rockwell Prime'
      ],
      exclusiveCreatures: [
        'Noglin',
        'Shadowmane',
        'Astrodelphis',
        'Maewing',
        'Stryder',
        'Voidwyrm'
      ],
      exclusiveResources: [
        'Mutageno'
      ],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
    MapaModel(
      id: 'Fjordur',
      name: 'Fjordur',
      image: 'assets/images/Mapas/Fjordur_Map.webp', // ¡Asegúrate de que la ruta del asset sea correcta!
      description: 'Fjordur es un mapa con inspiración nórdica. Incluye cuatro islas principales (Vardiland, Vannaland y Balheimr) con bosques fríos, terrenos escarpados y biomas muy variados. Tiene tres reinos místicos: Jotunheim, Vanaheim y Asgard, accesibles mediante cuevas-portales. Más de 25 cuevas peligrosas para explorar.',
      difficulty: 'Alta',
      releaseYear: 2022,

      // Campos requeridos por el modelo simplificado:
      detailImage: [
        'https://ark.wiki.gg/images/thumb/7/74/The_Island_Key_Features.jpg/800px-The_Island_Key_Features.jpg',
        'https://ark.wiki.gg/images/thumb/8/87/The_Island_Map.jpg/800px-The_Island_Map.jpg',
      ],
      exclusiveEngrams: ['No hay Engramas exclusivos de Fjordur'],
      bosses: [
        'Broodmother/Megapithecus/Dragon (Triple Jefe)',
        'Fenrisúlfr'
      ],
      exclusiveCreatures: [
        'Fjordhawk',
        'Desmodus',
        'Andrewsarchus',
        'Fjord Wyverns (Variantes de Elemento)'
      ],
      exclusiveResources: ['Runas de Bosses (para Fenrisúlfr)'],

      // ¡ELIMINA las líneas que causan el error como 'isCanonical' y 'detailImageUrls'!
    ),
  ];
}
// Clase que define un recurso de crafteo (Ej: Wood, Stone, Metal Ingot)
class Resource {
  final String name;
  final int quantity;
  final String image; // Ruta de la imagen del recurso

  Resource({required this.name, required this.quantity, required this.image});

  //Mé
  Resource copyWith({int? quantity}) {
    return Resource(
      name: this.name,
      quantity: quantity ?? this.quantity,
      image: this.image,
    );
  }
}

// Clase que define un ítem crafteable (Ej: Fabricated Pistol, Metal Foundation)
class ArkItem {
  final String name;
  final String image; // Ruta de la imagen del ítem final
  final List<Resource> resources; // Lista de recursos necesarios para craftearlo

  ArkItem({
    required this.name,
    required this.image,
    required this.resources,
  });
}

// Lista de ítems de ejemplo para la calculadora (Debes expandirla)
final List<ArkItem> allItems = [
  ArkItem(
    name: 'Metal Ingot',
    image: 'assets/items/metal_ingot.png',
    resources: [
      Resource(name: 'Metal', quantity: 2, image: 'assets/resources/metal.png'),
      Resource(name: 'Stone', quantity: 1, image: 'assets/resources/stone.png'),
    ],
  ),
  ArkItem(
    name: 'Fabricated Pistol',
    image: 'assets/items/fabricated_pistol.png',
    resources: [
      Resource(name: 'Polymer', quantity: 60, image: 'assets/resources/polymer.png'),
      Resource(name: 'Metal Ingot', quantity: 15, image: 'assets/resources/metal_ingot.png'),
      Resource(name: 'Oil', quantity: 10, image: 'assets/resources/oil.png'),
    ],
  ),
  // Agrega más ítems aquí...
];
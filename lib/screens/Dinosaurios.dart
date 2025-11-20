import 'package:flutter/material.dart';
import '../data/dinosaurs_data.dart'; // Importa las categorías y los datos de dinos
import 'category_dinos_screen.dart'; // Importa la pantalla que muestra los dinos por categoría

class DinosaurioScreen extends StatelessWidget {
  const DinosaurioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Enciclopedia de Dinosaurios',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categories.length, // Usa la lista de categorías del archivo data
        itemBuilder: (context, index) {
          final category = categories[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                category.toUpperCase(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {
                // Al tocar una categoría, abre la lista de dinos correspondientes
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDinosScreen(category: category),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

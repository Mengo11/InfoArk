import 'package:flutter/material.dart';
import '../data/dinosaurs_data.dart';
import 'dino_detail_screen.dart';

class CategoryDinosScreen extends StatelessWidget {
  final String category;
  CategoryDinosScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    // Obtiene la lista de Dinos filtrada
    final dinos = getDinosaursByCategory(category);

    return Scaffold(
      appBar: AppBar(title: Text('Dinosaurios - ${category.toUpperCase()}')),
      body: ListView.builder(
        itemCount: dinos.length,
        itemBuilder: (context, index) {
          final dino = dinos[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(dino.imagePaths[0], width: 60, height: 60, fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Icon(Icons.pets, size: 40)),
            ),
            title: Text(dino.name, style: TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Text(dino.categories.join(', ')), // Muestra todas las categorías
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DinoDetailScreen(dino: dino),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
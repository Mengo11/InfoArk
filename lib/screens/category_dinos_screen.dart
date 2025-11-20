// category_dinos_screen.dart (Mejorado)

import 'package:flutter/material.dart';
import '../data/dinosaurs_data.dart';
import 'dino_detail_screen.dart';
import '../data/utils/app_colors.dart'; // Importar colores

class CategoryDinosScreen extends StatelessWidget {
  final String category;
  CategoryDinosScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final dinos = getDinosaursByCategory(category);

    return Scaffold(
      appBar: AppBar(
        title: Text('Dinosaurios - ${category.toUpperCase()}'),
        backgroundColor: AppColors.surfaceCard,
      ),
      backgroundColor: AppColors.backgroundPrimary,
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: dinos.length,
        itemBuilder: (context, index) {
          final dino = dinos[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Card(
              color: AppColors.surfaceCard, // Color de la tarjeta
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Bordes redondeados
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    dino.imagePaths[0],
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(Icons.pets, size: 40, color: AppColors.accentCyan),
                  ),
                ),
                title: Text(
                    dino.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary
                    )
                ),
                subtitle: Text(
                    dino.categories.join(', '),
                    style: TextStyle(color: AppColors.textSecondary.withOpacity(0.8))
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.accentCyan),
                onTap: () {
                  // Animación Hero para la imagen del dinosaurio
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DinoDetailScreen(dino: dino),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
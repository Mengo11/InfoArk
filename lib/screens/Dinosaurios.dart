// Dinosaurios.dart

import 'package:flutter/material.dart';
import '../data/dinosaurs_data.dart';
import 'category_dinos_screen.dart';
import '../data/utils/app_colors.dart';

// 1. NUEVO MAPA: Rutas de imagen para cada categoría
// Usamos solo la primera ruta de las que proporcionaste.
const Map<String, String> categoryImagePaths = {
  // Asegúrate de que las claves coincidan con las categorías en 'categories'
  'VOLADORES': 'assets/images/Dinos/Voladores/Griffin.png',
  'DAÑO': 'assets/images/Dinos/Melee/Giganotosaurus.png',
  'ACUÁTICOS': 'assets/images/Dinos/Acuaticos/Tusoteuthis.webp',
  'BOSES': 'assets/images/Dinos/Boss/Dragon.webp',
  // Nota: Si 'FARMERS' no tiene una ruta en tus assets, usa un placeholder.
};

class DinosaurioScreen extends StatelessWidget {
  const DinosaurioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de categorías (asumo que 'categories' es una lista de strings definida en dinosaurs_data.dart)
    // Ejemplo: categories = ['voladores', 'daño', 'farmers', 'acuáticos', 'boses'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enciclopedia de Dinosaurios'),
        centerTitle: true,
        backgroundColor: AppColors.surfaceCard,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final categoryUpper = category.toUpperCase();

          // Obtener la ruta de la imagen o una ruta de fallback (por si falta)
          final imagePath = categoryImagePaths[categoryUpper];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Card(
              color: AppColors.surfaceCard,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(

                // 2. REEMPLAZO: Usar Image.asset en lugar de Icon
                leading: Container(
                  width: 50, // Define un ancho fijo para que la imagen se vea bien
                  height: 50, // Define una altura fija
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.accentCyan.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                    // Opcional: Borde para destacar
                    border: Border.all(color: AppColors.accentCyan.withOpacity(0.5), width: 1.5),
                  ),
                  child: imagePath != null
                      ? ClipRRect(
                    borderRadius: BorderRadius.circular(4), // Bordes redondeados para la imagen
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover, // Ajusta la imagen para cubrir el contenedor
                      errorBuilder: (context, error, stackTrace) {
                        // Fallback si la imagen no se carga
                        return Icon(Icons.broken_image, color: AppColors.textSecondary);
                      },
                    ),
                  )
                      : Icon(Icons.pets, color: AppColors.accentCyan, size: 28), // Fallback si la ruta es nula
                ),

                title: Text(
                  categoryUpper,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),

                trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: AppColors.textSecondary.withOpacity(0.6)
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 300),
                      pageBuilder: (context, animation, secondaryAnimation) => CategoryDinosScreen(category: category),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.2, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeOutCubic;
                        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
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
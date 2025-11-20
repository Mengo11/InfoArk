import 'package:flutter/material.dart';
// Importaciones de utilidades y modelos
import '../data/utils/app_colors.dart';
// Importamos el modelo de ingrediente que necesitamos para la lista
import '../data/models/ingredient_model.dart';
import '../data/models/dye_model.dart';
// Importación duplicada eliminada: import '../data/models/Tintes_model.dart';
// Importación duplicada eliminada: import '../data/utils/app_colors.dart';


class TintesDetailScreen extends StatelessWidget {
  final DyeModel dye;

  const TintesDetailScreen({super.key, required this.dye});

  // Widget auxiliar para manejar la visualización de la imagen del tinte.
// Dentro de TintesDetailScreen en tintes_detail_screen.dart
  Widget _buildDyeImage(DyeModel dye) {
    if (dye.image.isNotEmpty) {
      return Image.asset(
        dye.image,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            Container(color: dye.color), // Se mantiene el color como fallback de error
      );
    }
    // Si no hay imagen, retornamos un widget vacío o transparente.
    return const SizedBox.expand(); // <--- CAMBIADO
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Detalle de Tinte: ${dye.name}',
          style: const TextStyle(
              color: AppColors.secondaryColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección de la Muestra del Tinte (ACTUALIZADA con lógica de imagen)
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    // Aplicamos los bordes y sombras al contenedor que envuelve la imagen
                    border: Border.all(color: AppColors.secondaryColor, width: 4),
                    boxShadow: [
                      BoxShadow(
                        color: dye.color.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: _buildDyeImage(dye), // Llamamos al auxiliar que maneja la imagen/color
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Descripción del Tinte
            const Text(
              'Descripción:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              dye.description,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.secondaryColor.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 30),

            // Ingredientes
            const Text(
              'Ingredientes de Crafteo:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryColor,
              ),
            ),
            const SizedBox(height: 15),

            // Iteración sobre la lista de IngredientModel
            ...dye.ingredients.map((ingredient) {
              return IngredientRow(
                name: ingredient.name,
                quantity: ingredient.quantity,
                imagePath: ingredient.imagePath, // Pasamos la ruta de la imagen
              );
            }).toList(),

            const Divider(color: AppColors.primaryColor, height: 20),
          ],
        ),
      ),
    );
  }
}


class IngredientRow extends StatelessWidget {
  // Eliminamos IconData icon, ya no se usa.
  final String name;
  final int quantity;
  final String imagePath; // Usamos la ruta de la imagen

  const IngredientRow({
    super.key,
    required this.name,
    required this.quantity,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.primaryColor, width: 2),
      ),
      child: Row(
        children: [
          // 🔥 IMAGEN DEL INGREDIENTE
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              imagePath,
              width: 35,
              height: 35,
              fit: BoxFit.cover,
              // Fallback en caso de que la imagen no se cargue
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.image_not_supported, color: AppColors.primaryColor, size: 35),
            ),
          ),
          const SizedBox(width: 15),
          // Nombre del ingrediente
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
          // Cantidad requerida
          Text(
            '$quantity',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
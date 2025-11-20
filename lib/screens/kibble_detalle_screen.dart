// lib/screens/kibble_detalle_screen.dart

import 'package:flutter/material.dart';
import '../data/models/kibble_model.dart';
import '../data/utils/app_colors.dart';




class KibbleDetalleScreen extends StatelessWidget {
  final KibbleModel kibble;

  const KibbleDetalleScreen({super.key, required this.kibble});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          kibble.name,
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
            // Sección de Imagen y Nombre
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset( // **CAMBIO: Usar Image.asset**
                      kibble.imageUrl,
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.broken_image, size: 150, color: AppColors.secondaryColor),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    kibble.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    kibble.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.secondaryColor.withOpacity(0.8),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),

            // Tarjeta de Información General (Sin cambios)
            _buildInfoCard(
              icon: Icons.factory,
              title: 'Estación de Elaboración',
              content: kibble.craftingStation,
            ),
            const SizedBox(height: 20),

            // Tarjeta de Ingredientes (Con cambios para Image.asset)
            _buildIngredientsCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({required IconData icon, required String title, required String content}) {
    // ... (Tu código actual para _buildInfoCard es correcto y se mantiene)
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF282828),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: AppColors.primaryColor, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.primaryColor, size: 28),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondaryColor,
                ),
              ),
            ],
          ),
          const Divider(color: AppColors.primaryColor, height: 20),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIngredientsCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF282828),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: AppColors.primaryColor, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.kitchen, color: AppColors.primaryColor, size: 28),
              SizedBox(width: 10),
              Text(
                'Ingredientes Requeridos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondaryColor,
                ),
              ),
            ],
          ),
          const Divider(color: AppColors.primaryColor, height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: kibble.ingredients.length,
            itemBuilder: (context, index) {
              final ingredient = kibble.ingredients[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    // Imagen del Ingrediente
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset( // **CAMBIO: Usar Image.asset**
                        ingredient.imageUrl,
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.category, size: 30, color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(width: 10),
                    // Cantidad y Nombre
                    Expanded(
                      child: Text(
                        '${ingredient.quantity}x ${ingredient.name}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
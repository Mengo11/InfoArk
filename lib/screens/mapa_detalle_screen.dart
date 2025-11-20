// lib/screens/mapa_detalle_screen.dart

import 'package:flutter/material.dart';
import '../data/models/mapa_model.dart';
import '../data/utils/app_colors.dart';

class MapaDetalleScreen extends StatelessWidget {
  final MapaModel map;

  const MapaDetalleScreen({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          map.name,
          style: const TextStyle(
              color: AppColors.secondaryColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen Principal del Mapa (Asset local)
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                map.image,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
                errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.map, size: 150, color: AppColors.secondaryColor),
              ),
            ),
            const SizedBox(height: 16),

            // Descripción
            Text(map.description,
                style:
                const TextStyle(fontSize: 16, color: AppColors.secondaryColor)),
            const SizedBox(height: 20),

            // Información Clave (Dificultad, Año)
            _buildInfoRow(Icons.flag_circle, 'Dificultad', map.difficulty),
            _buildInfoRow(Icons.calendar_month, 'Lanzamiento', map.releaseYear.toString()),
            const SizedBox(height: 20),

            // Tarjeta de Jefes (Bosses)
            _buildDetailCard(
              title: 'Jefes (Bosses)',
              icon: Icons.dangerous,
              items: map.bosses.map((b) => b).toList(),
              color: Colors.redAccent,
            ),
            const SizedBox(height: 20),

            // Tarjeta de Criaturas Exclusivas
            _buildDetailCard(
              title: 'Criaturas Exclusivas',
              icon: Icons.catching_pokemon,
              items: map.exclusiveCreatures,
              color: Colors.lightGreen,
            ),
            const SizedBox(height: 20),

            // Tarjeta de Recursos y Engramas
            _buildDetailCard(
              title: 'Recursos Exclusivos',
              icon: Icons.diamond,
              items: map.exclusiveResources,
              color: Colors.blueAccent,
            ),
            const SizedBox(height: 20),

            _buildDetailCard(
              title: 'Engramas Exclusivos',
              icon: Icons.menu_book,
              items: map.exclusiveEngrams,
              color: Colors.orangeAccent,
            ),
            const SizedBox(height: 20),

            // Galería (Usando Image.network, ya que tienes URLs)
            const Text('Galería de Imágenes:',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppColors.secondaryColor)),
            const SizedBox(height: 8),

            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: map.detailImage.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        map.detailImage[index],
                        fit: BoxFit.cover,
                        width: 280,
                        errorBuilder: (context, error, stackTrace) =>
                        const Center(child: Icon(Icons.image_not_supported, size: 50, color: Colors.grey)),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primaryColor, size: 24),
          const SizedBox(width: 10),
          Text(
            '$title: ',
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: AppColors.secondaryColor),
          ),
          Text(
            content,
            style: const TextStyle(color: AppColors.secondaryColor),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailCard(
      {required String title,
        required IconData icon,
        required List<String> items,
        required Color color}) {
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
              Icon(icon, color: color, size: 28),
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
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 4.0, left: 8),
            child: Row(
              children: [
                Icon(Icons.circle, size: 8, color: color),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    item,
                    style: const TextStyle(
                        fontSize: 16, color: AppColors.secondaryColor),
                  ),
                ),
              ],
            ),
          )),
          if (items.isEmpty)
            const Text(
              'No hay datos exclusivos registrados.',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
        ],
      ),
    );
  }
}
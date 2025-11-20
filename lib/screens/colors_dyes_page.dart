import 'package:flutter/material.dart';
import '../data/data_sources/tintes_data_source.dart';
import '../data/models/Tintes_model.dart';
import '../data/models/dye_model.dart';
import '../data/utils/app_colors.dart';
import 'tintes_detail_screen.dart';

class ColorsDyesPage extends StatelessWidget {
  const ColorsDyesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tintes = TinteDataSource.tintesList;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Colores y Tintes',
          style: TextStyle(
              color: AppColors.secondaryColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        centerTitle: true,
      ),
      body: tintes.isEmpty
          ? const Center(
        child: Text(
          'No hay tintes cargados.',
          style: TextStyle(color: AppColors.secondaryColor),
        ),
      )
          : GridView.builder(
        padding: const EdgeInsets.all(12.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Más pequeño para los cuadros de color
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: tintes.length,
        itemBuilder: (context, index) {
          final dye = tintes[index];
          return DyeCard(dye: dye);
        },
      ),
    );
  }
}

class DyeCard extends StatelessWidget {
  final DyeModel dye;

  const DyeCard({super.key, required this.dye});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardColor,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: const BorderSide(color: AppColors.primaryColor, width: 1.5),
      ),
      child: InkWell(
        onTap: () {
          // Navegación al detalle
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => TintesDetailScreen(dye: dye),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Muestra del color/imagen (ACTUALIZADA)
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: dye.image.isNotEmpty
                    ? Image.asset(dye.image, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => Container(color: dye.color))
                    : Container(color: dye.color),
              ),
            ),
            const SizedBox(height: 8),
            // Nombre del tinte
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                dye.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
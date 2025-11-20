// lib/screens/kibble_page.dart

import 'package:flutter/material.dart';
import '../data/utils/app_colors.dart';
import '../data/data_sources/kibble_data_source.dart'; // Importar la fuente de datos
import 'kibble_detalle_screen.dart'; // Importar la pantalla de detalle

class KibblePage extends StatelessWidget {
  const KibblePage({super.key});

  @override
  Widget build(BuildContext context) {
    final kibbles = KibbleDataSource.kibblesList; // Obtener la lista

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Calculadora de Pienso',
          style: TextStyle(
              color: AppColors.secondaryColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: kibbles.length,
        itemBuilder: (context, index) {
          final kibble = kibbles[index];
          return Card(
            color: const Color(0xFF282828), // Color de fondo de la tarjeta
            elevation: 5,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            child: ListTile(
              contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset( // Usar Image.asset para imagen local
                  kibble.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error, size: 50, color: Colors.red),
                ),
              ),
              title: Text(
                kibble.name,
                style: const TextStyle(
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Tipo: ${kibble.kibbleType}',
                style:
                TextStyle(color: AppColors.secondaryColor.withOpacity(0.7)),
              ),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: AppColors.primaryColor),
              onTap: () {
                // Navegación al detalle del Kibble
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KibbleDetalleScreen(kibble: kibble),
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
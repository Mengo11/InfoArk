// lib/screens/kibble_page.dart

import 'package:flutter/material.dart';
import '../data/utils/app_colors.dart';
import '../data/data_sources/kibble_data_source.dart'; // Importar la fuente de datos
import 'kibble_detalle_screen.dart'; // Importar la pantalla de detalle



class KibblePage extends StatelessWidget {
  const KibblePage({super.key});

  // Función para obtener el color del borde basado en el tipo de Kibble
  Color _getKibbleColor(String type) {
    switch (type) {
      case 'Básico': return AppColors.kibbleBasic;
      case 'Simple': return AppColors.kibbleSimple;
      case 'Regular': return AppColors.kibbleRegular;
      case 'Superior': return AppColors.kibbleSuperior;
      case 'Excepcional': return AppColors.kibbleExceptional;
      case 'Extraordinario': return AppColors.kibbleExtraordinary;
      default: return AppColors.textSecondary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final kibbles = KibbleDataSource.kibblesList;

    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary,
      appBar: AppBar(
        title: const Text('Calculadora de Pienso'),
        backgroundColor: AppColors.surfaceCard,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: kibbles.length,
        itemBuilder: (context, index) {
          final kibble = kibbles[index];
          final borderColor = _getKibbleColor(kibble.kibbleType);

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Card(
              color: AppColors.surfaceCard,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                // Borde dinámico basado en el tipo de Kibble
                side: BorderSide(
                    color: borderColor,
                    width: 2.5 // Borde un poco más grueso
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    kibble.imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(Icons.egg, size: 50, color: borderColor),
                  ),
                ),
                title: Text(
                  kibble.name,
                  style: TextStyle(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Tipo: ${kibble.kibbleType}',
                  style: TextStyle(color: AppColors.textSecondary),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: AppColors.accentCyan),
                onTap: () {
                  // Navegación con la animación suave (si aplicaste PageRouteBuilder)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KibbleDetalleScreen(kibble: kibble),
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
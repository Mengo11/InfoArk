import 'package:flutter/material.dart';
import '../data/data_sources/mapas_data.dart'; // Importa la fuente de datos
import '../data/models/mapa_model.dart';
import 'mapa_detalle_screen.dart'; // Importa la pantalla de detalle
import '../data/utils/app_colors.dart'; // Asumo que tienes esta importación

class MapsPage extends StatelessWidget { // ¡AHORA ES UN WIDGET!
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final maps = MapasData.allArkMaps; // Accede a los datos

    // Este es el código de tu GridView para mostrar la lista de mapas
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text('Mapas de ARK', style: TextStyle(color: AppColors.secondaryColor, fontWeight: FontWeight.bold)),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemCount: maps.length,
        itemBuilder: (context, index) {
          final map = maps[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapaDetalleScreen(map: map),
                ),
              );
            },
            child: Card(
              color: const Color(0xFF282828),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: AppColors.primaryColor, width: 1.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
                      child: Image.asset(
                        map.image,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                        const Center(child: Icon(Icons.map, size: 50, color: Colors.grey)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          map.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../data/models/dinosaur.dart';
import '../data/models/boss_info.dart';


class DinoDetailScreen extends StatelessWidget {
  final Dinosaur dino;


  DinoDetailScreen({required this.dino});

  // Función auxiliar para construir una fila de información de utilidad/tameo
  Widget _buildInfoRow({required IconData icon, required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.blueGrey),
          SizedBox(width: 8),
          Text('$label: ', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }

  // Función para construir la vista de Dinos normales (Utilidad y Tameo)
  Widget _buildDinoDetails(Dinosaur dino) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(height: 30),
        Text('Información de Tameo y Utilidad', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700])),
        SizedBox(height: 12),

        // Utilidad
        _buildInfoRow(icon: Icons.directions_bike, label: 'Es Montable', value: dino.isMountable ? 'Sí' : 'No'),
        _buildInfoRow(icon: Icons.child_care, label: 'Dino de Hombro', value: dino.isShoulderPet ? 'Sí' : 'No'),
        _buildInfoRow(icon: Icons.handshake, label: 'Tameo Pasivo', value: dino.isPassiveTame ? 'Sí' : 'No'),

        SizedBox(height: 16),
        Text('Drenaje de Torpor:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(dino.torporDrainInfo, style: TextStyle(fontSize: 16)),

        SizedBox(height: 16),
        Text('Comida Preferida:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        // Lista de Comidas
        ...dino.preferredFoods.map((food) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            children: [
              Image.asset(food.imagePath, width: 30, height: 30, errorBuilder: (context, error, stackTrace) => Icon(Icons.food_bank, size: 30)),
              SizedBox(width: 8),
              Text(food.foodName, style: TextStyle(fontSize: 16)),
            ],
          ),
        )).toList(),
      ],
    );
  }

  // Función para construir la vista de Jefes (Requisitos de Invocación)
  Widget _buildBossDetails(BossInfo bossInfo) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(height: 30),
        Text('Información de Jefe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red[700])),
        SizedBox(height: 12),

        // Expansión por dificultad (Gamma, Beta, Alpha)
        ...bossInfo.difficulties.map((difficulty) => Card(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ExpansionTile(
            backgroundColor: Colors.grey[50],
            title: Text(
              '${difficulty.difficultyName} | Nivel ${difficulty.levelUnlocked}',
              style: TextStyle(fontWeight: FontWeight.bold, color: difficulty.difficultyName == 'Alpha' ? Colors.red : Colors.orange),
            ),
            subtitle: Text('Recompensa: ${difficulty.elementReward} Elemento'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Requisitos de Invocación:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 8),
                    // Lista de Tributos
                    ...difficulty.requiredTributes.map((tribute) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Image.asset(tribute.imagePath, width: 20, height: 20, errorBuilder: (context, error, stackTrace) => Icon(Icons.diamond, size: 20)),
                          SizedBox(width: 8),
                          Expanded(child: Text('${tribute.itemName}: x${tribute.quantity}')),
                        ],
                      ),
                    )).toList(),
                    SizedBox(height: 10),
                    Text('Vida Base Estimada: ${difficulty.healthBase.toString()}'),
                  ],
                ),
              ),
            ],
          ),
        )).toList(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(dino.name)),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          // Carrusel de imágenes
          CarouselSlider(
          options: CarouselOptions(
          height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.85,
          ),
          items: dino.imagePaths.map((path) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(path, fit: BoxFit.cover, width: 1000.0),
                  ),
                );
              },
            );
          }).toList(),
        ),

        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                // 1. Información de Combate/Base (solo si tienen valores)
                if (dino.damageBase != null)
            Text('Daño Base: ${dino.damageBase}', style: TextStyle(fontSize: 18, color: Colors.orange)),
        if (dino.healthBase != null)
    Text('Vida Base: ${dino.healthBase}', style: TextStyle(fontSize: 18, color: Colors.red)),

    SizedBox(height: 16),

    // 2. Descripción
    Text('Descripción:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    Text(dino.description, style: TextStyle(fontSize: 16)),

    if (dino.bossInfo != null) ...[
      _buildBossDetails(dino.bossInfo!),
    ] else ...[
      _buildDinoDetails(dino),
    ]
    ],
    ),
    ),
    ],
    ),
    ),
    );
  }
}
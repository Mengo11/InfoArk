import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Pantalla_de_inicio.dart'; // Asegurate que esté bien la ruta

class ArkCommandsApp extends StatelessWidget {
  final List<Map<String, String>> commands = [
    {
      'command': 'gcm',
      'description': 'Modo creativo: objetos gratis, peso infinito y crafteo instantáneo.'
    },
    {
      'command': 'ghost',
      'description': 'Permite atravesar estructuras y el terreno.'
    },
    {
      'command': 'fly',
      'description': 'Activa el vuelo para el personaje.'
    },
    {
      'command': 'infiniteStats',
      'description': 'Estadísticas infinitas como vida, comida y stamina.'
    },
    {
      'command': 'god',
      'description': 'Inmortalidad total frente a daño.'
    },
    {
      'command': 'summon',
      'description': 'Invoca una criatura por su ID.'
    },
  ];

  void showCommandDetail(BuildContext context, String command, String description) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF1E1E1E),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          command,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        content: Text(
          description,
          style: const TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cerrar", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text("Comandos de ARK"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: commands.length,
        itemBuilder: (context, index) {
          final command = commands[index];
          return ListTile(
            title: Text(
              command['command']!,
              style: const TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.copy, color: Colors.white54),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: command['command']!));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Comando "${command['command']}" copiado'),
                    backgroundColor: Colors.green,
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
            onTap: () {
              showCommandDetail(context, command['command']!, command['description']!);
            },
          );
        },
      ),
    );
  }
}

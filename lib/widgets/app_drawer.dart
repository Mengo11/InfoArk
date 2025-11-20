
import 'package:flutter/material.dart';
import 'package:ark_calculator/screens/Menucalculadora.dart';
import 'package:ark_calculator/screens/Dinosaurios.dart';
import '../screens/Comands.dart';
import '../screens/Pantalla_de_inicio.dart';
import '../screens/colors_dyes_page.dart';
import '../screens/kibble_page.dart'; // ¡Importación agregada!
// Ejemplo de importación en AppDrawer.dart
import '../screens/Mapas.dart'; // Asegúrate que esta ruta es correcta

// Menú lateral para la app ARK
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  // Lista de opciones del menú
  static final List<Map<String, dynamic>> menuItems = [
    {
      'title': 'Home',
      'icon': Icons.home,
      // Si quieres que el botón Home te lleve a la pantalla inicial sin retroceder, usa pushReplacement aquí
      'route': HomeScreen(),
    },
    {
      'title': 'Calculadoras',
      'icon': Icons.calculate,
      'route': CalculatorMenuPage(),
    },
    {
      'title': 'Dinosaurios',
      'icon': Icons.pets,
      'route': DinosaurioScreen(),
    },
    {
      'title': 'Maps',
      'icon': Icons.map,
      // ✨ La ruta DEBE ser la instancia de la clase Widget: MapsPage()
      'route': MapsPage(),
    },
    {
      'title': 'Commands',
      'icon': Icons.code,
      'route': ArkCommandsApp(),
    },
    {
      'title': 'Kibble',
      'icon': Icons.egg, // Ícono de huevo, ¡perfecto para Kibble!
      'route': KibblePage(), // Clase KibblePage agregada
    },
    {
      'title': 'Colors & Dyes',
      'icon': Icons.color_lens,
      'route': ColorsDyesPage(),
    },
    {
      'title': 'Boss',
      'icon': Icons.pets,
      'route': null,
    },
  ];

  // Función para manejar la navegación
  void _navigate(BuildContext context, Widget? route) {
    Navigator.pop(context); // Cierra el Drawer
    if (route != null) {
      // CAMBIO CLAVE: Usamos 'push' en lugar de 'pushReplacement'.
      // Esto hace que la pantalla anterior (HomeScreen) se mantenga en la pila,
      // y automáticamente aparece la flecha de retroceso.
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => route),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Encabezado con logo y título
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.black),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/Logo_ascendend.png'),
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(width: 10),
                const Text(
                  'ARK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Opciones del menú generadas desde la lista
          ...menuItems.asMap().entries.map((entry) {
            final item = entry.value;
            return Column(
              children: [
                ListTile(
                  leading: Icon(item['icon'], color: Colors.white, size: 20),
                  title: Text(
                    item['title'],
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () => _navigate(context, item['route']),
                ),
                // Asumiendo que quieres el divisor después de Calculadoras (index 1) y Boss (index 7, ya que agregamos Kibble)
                if (entry.key == 1 || entry.key == 7)
                  const Divider(color: Colors.grey),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
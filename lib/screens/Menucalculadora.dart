import 'package:ark_calculator/screens/Calculadora/Campo_tek_calculadora.dart';
import 'package:ark_calculator/screens/Calculadora/Forja_idustrial.dart';
import 'package:flutter/material.dart';
import 'Calculadora/Calculadora_items.dart';
import 'calculadora/Generadortekcalculadora.dart';
import '../screens/Pantalla_de_inicio.dart'; // Import HomeScreen

class CalculatorMenuPage extends StatelessWidget {
  const CalculatorMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold es como un contenedor principal para la estructura de la pantalla (similar a un <div> en HTML)
    return Scaffold(
      // Barra superior (como un header)
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            ); // Navega a HomeScreen reemplazando la pantalla actual
          },
        ),
        title: const Text("Herramientas"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // GridView para mostrar los botones en una cuadrícula (como un grid en CSS)
        child: GridView.count(
          crossAxisCount: 2, // 2 columnas
          crossAxisSpacing: 16, // Espacio horizontal entre botones
          mainAxisSpacing: 16, // Espacio vertical entre botones
          // Lista de botones para las calculadoras
          children: [
            // Botón para la calculadora de artesanía
            _buildButton(
              context,
              icon: 'assets/images/Fabricados/Herreria.png', // Ícono (ruta de imagen)
              label: 'Calculadora de Objetos',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CalculatorPage()),
                );
              },
            ),
            // Botón para la calculadora del generador TEK
            _buildButton(
              context,
              icon: 'assets/images/Fabricados/Generador_Tek.png',
              label: 'Calculadora del Generador TEK',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaCalculadoraGeneradorTek()),
                );
              },
            ),
            // Botón para la calculadora de campo de fuerza TEK
            _buildButton(
              context,
              icon: 'assets/images/Fabricados/Campo_de_fuerza_Tek.png',
              label: 'Calculadora de Campo de fuerza TEK',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaCalculadoraCampoFuerzaTek()),
                );
              },
            ),
            // Botón para la calculadora de campo de fuerza TEK
            _buildButton(
              context,
              icon: 'assets/images/Fabricados/Forja_industrial.png',
              label: 'Calculadora de Forja idustrial',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForjaIndustrialCalculadora()),
                );
              },
            ),
            // Botón para la calculadora de cámara de clonación TEK
            _buildButton(
              context,
              icon: 'assets/images/Fabricados/Clonadora.png',
              label: 'Calculadora de Clonadora TEK',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CalculatorPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Función para crear un botón reutilizable (como un componente en JavaScript)
  Widget _buildButton(BuildContext context, {required String icon, required String label, required VoidCallback onTap}) {
    // GestureDetector permite detectar clics (similar a un evento onClick en JavaScript)
    return GestureDetector(
      onTap: onTap, // Acción al hacer clic
      // Container es como un <div> con estilos
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900], // Fondo gris oscuro (como background-color en CSS)
          borderRadius: BorderRadius.circular(12), // Bordes redondeados
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos verticalmente
          children: [
            Image.asset(
              icon,
              width: 60,
              height: 60,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, color: Colors.white),
            ),
            const SizedBox(height: 8), // Espacio entre ícono y texto
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
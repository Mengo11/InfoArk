// Pantalla_de_inicio.dart

import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../data/utils/app_colors.dart'; // Importar colores

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ark Calculator'),
        centerTitle: true,
        // Usará el color AppColors.surfaceCard definido en main.dart
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ----------------------------------------
            // 1. Imagen Central/Logo de Marca
            // Asegúrate de que 'assets/images/Logo_ascendend.png' exista
            Image.asset(
              'assets/images/logo_ascendend.webp', // O el logo de tu aplicación
              height: 120,
              width: 120,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.calculate, size: 100, color: AppColors.accentCyan),
            ),
            const SizedBox(height: 30),

            // ----------------------------------------
            // 2. Texto de Bienvenida con Efecto "Glow"
            Text(
              'Bienvenido a ARK CALCULATOR',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900, // Fuente muy gruesa
                color: AppColors.textPrimary,
                shadows: [
                  // Sombra para el efecto GLOW (Cian vibrante)
                  Shadow(
                    color: AppColors.accentCyan.withOpacity(0.7),
                    blurRadius: 10.0,
                    offset: const Offset(0, 0),
                  ),
                  Shadow(
                    color: AppColors.accentCyan.withOpacity(0.4),
                    blurRadius: 20.0,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Tus herramientas para sobrevivir en el ARK.',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textSecondary,
              ),
            ),
            // ----------------------------------------
          ],
        ),
      ),
    );
  }
}
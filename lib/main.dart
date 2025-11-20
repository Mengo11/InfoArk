// main.dart

import 'package:flutter/material.dart';
import 'screens/Pantalla_de_inicio.dart';
import 'data/utils/app_colors.dart'; // Importar la nueva paleta de colores

void main() {
  runApp(const ArkCalculatorApp());
}

class ArkCalculatorApp extends StatelessWidget {
  const ArkCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ark Calculator',
      // Definición del Tema Oscuro Moderno
      theme: ThemeData.dark().copyWith(
        // Colores principales
        primaryColor: AppColors.accentCyan, // Usar el nuevo acento
        scaffoldBackgroundColor: AppColors.backgroundPrimary, // Fondo principal oscuro
        cardColor: AppColors.surfaceCard, // Color de las tarjetas

        // AppBar Style
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.surfaceCard, // Barra superior ligeramente más clara
          foregroundColor: AppColors.textPrimary,
          elevation: 0, // Diseño plano y moderno
          titleTextStyle: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),

        // Text Theme
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: AppColors.textPrimary),
          bodyMedium: TextStyle(color: AppColors.textSecondary),
        ),

        // Button Style (usar el acento)
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.backgroundPrimary, // Texto oscuro en botón brillante
            backgroundColor: AppColors.accentCyan, // Fondo brillante
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
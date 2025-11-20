// lib/data/utils/app_colors.dart

import 'package:flutter/material.dart';

// Definición de colores oscuros y acentos brillantes para un look moderno (estilo TEK)
class AppColors {
  // --- Colores Base ---
  static const Color backgroundPrimary = Color(0xFF121212); // Fondo negro muy oscuro
  static const Color surfaceCard = Color(0xFF1E1E1E); // Superficie/Tarjetas (ligeramente más claro que el fondo)
  static const Color textPrimary = Colors.white; // Texto principal
  static const Color textSecondary = Color(0xFFB0B0B0); // Texto secundario/desactivado

  // --- Colores de Acento (Tecnológicos/Bright) ---
  static const Color accentCyan = Color(0xFF14CCDA); // Cian brillante para elementos interactivos
  static const Color accentNeonGreen = Color(0xFF00FF88); // Verde neón para resaltar

  // Colores Kibble/Rarity (Se pueden usar como Borde)
  static const Color kibbleBasic = Color(0xFF75513A); // Marrón
  static const Color kibbleSimple = Color(0xFF5AB61F); // Verde
  static const Color kibbleRegular = Color(0xFF1F83B6); // Azul
  static const Color kibbleSuperior = Color(0xFF831FB6); // Morado
  static const Color kibbleExceptional = Color(0xFFB6A61F); // Dorado/Amarillo
  static const Color kibbleExtraordinary = Color(0xFFB6401F); // Naranja

  // --- Colores Antiguos (Mantener temporalmente si es necesario) ---
  // Elimina o reemplaza estos colores en el resto de la app
  static const Color primaryColor = Color(0xFF425C76); // ¡Eliminar o no usar!
  static const Color secondaryColor = Color(0xFFE5E5E5); // ¡Usar textPrimary!
  static const Color backgroundColor = backgroundPrimary; // ¡Usar backgroundPrimary!
  static const Color accentColor = Color(0xFFC7B18E); // ¡Usar accentCyan o accentNeonGreen!
  static const Color cardColor = surfaceCard; // ¡Usar surfaceCard!
}
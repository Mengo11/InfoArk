import 'package:flutter/material.dart';
import 'ingredient_model.dart'; // Importar el nuevo modelo

class DyeModel {
  final String name;
  final Color color;
  final String description;
  final String image; // Ruta del asset de la imagen del tinte

  // 🔥 CAMBIO CLAVE: Cambiamos Map por List<IngredientModel>
  final List<IngredientModel> ingredients;

  DyeModel({
    required this.name,
    required this.color,
    required this.description,
    required this.image,
    required this.ingredients,
  });
}
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ark Calculator'),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text(
          'Bienvenido a Ark Calculator',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
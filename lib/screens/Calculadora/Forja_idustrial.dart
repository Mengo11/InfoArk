import 'package:flutter/material.dart';
import 'dart:math' as math;

// Clase principal del widget estado
class ForjaIndustrialCalculadora extends StatefulWidget {
  const ForjaIndustrialCalculadora({super.key});

  @override
  State<ForjaIndustrialCalculadora> createState() => _ForjaIndustrialCalculadoraState();
}

// Estado del widget con animación
class _ForjaIndustrialCalculadoraState extends State<ForjaIndustrialCalculadora> with SingleTickerProviderStateMixin {
  String _materialSeleccionado = 'Seleccionar Material';
  String _materialAsset = 'assets/images/Recurso/Madera.png'; // Imagen inicial del material
  final TextEditingController _cantidadController = TextEditingController();
  String _resultado = '';
  late AnimationController _controller;
  late Animation<double> _animation;
  String _velocidadQuemado = 'x1';

  // Lista de materiales con sus propiedades
  final List<Map<String, dynamic>> _materiales = [
    {'nombre': 'Madera', 'icono': 'assets/images/Recurso/Madera.png', 'convierteEn': 'Carbón Vegetal', 'produccion': 1, 'tiempoBase': 7},
    {'nombre': 'Metal', 'icono': 'assets/images/Recurso/lingote_de_metal.png', 'convierteEn': 'Lingote de Hierro', 'produccion': 0.5, 'tiempoBase': 20},
    {'nombre': 'Chatarra', 'icono': 'assets/images/Recurso/Chatarra.png', 'convierteEn': 'Lingote de Chatarra', 'produccion': 0.5, 'tiempoBase': 20},
    {'nombre': 'Aceite + Piel', 'icono': 'assets/images/Recurso/Gasolina.png', 'convierteEn': 'Gasolina', 'produccion': 1/6, 'tiempoBase': 60},
  ];

  // Mapa de velocidades de quemado
  final Map<String, double> _velocidadesQuemado = {
    'x1': 1.0,
    'x5': 5.0,
    'x15': 15.0,
    'x25': 25.0,
  };

  // Inicialización de la animación
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  // Liberación de recursos
  @override
  void dispose() {
    _controller.dispose();
    _cantidadController.dispose();
    super.dispose();
  }

  // Muestra el modal para seleccionar material
  void _mostrarSelectorMaterial() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[900],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          const Text('Selecciona un material', style: TextStyle(color: Colors.white, fontSize: 18)),
          const Divider(color: Colors.orange),
          ..._materiales.map((material) {
            return ListTile(
              leading: Image.asset(material['icono'], width: 32, height: 32),
              title: Text(material['nombre'], style: const TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  _materialSeleccionado = material['nombre'];
                  _materialAsset = material['icono'];
                  _resultado = '';
                });
                Navigator.pop(context);
              },
            );
          }),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  // Muestra el modal para seleccionar velocidad de quemado
  void _mostrarSelectorVelocidad() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[900],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          const Text('Selecciona velocidad de quemado', style: TextStyle(color: Colors.white, fontSize: 18)),
          const Divider(color: Colors.orange),
          ..._velocidadesQuemado.keys.map((velocidad) {
            return RadioListTile<String>(
              title: Text(velocidad, style: const TextStyle(color: Colors.white)),
              value: velocidad,
              groupValue: _velocidadQuemado,
              onChanged: (value) {
                setState(() {
                  _velocidadQuemado = value!;
                  _resultado = '';
                });
                Navigator.pop(context);
              },
              activeColor: Colors.orange,
            );
          }),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  // Calcula el resultado basado en los inputs
  void _calcularResultado() {
    final cantidad = int.tryParse(_cantidadController.text) ?? 0;
    final velocidadMultiplicador = _velocidadesQuemado[_velocidadQuemado]!;
    final material = _materiales.firstWhere((m) => m['nombre'] == _materialSeleccionado, orElse: () => {'nombre': 'Seleccionar Material', 'convierteEn': '', 'produccion': 0, 'tiempoBase': 0});

    if (cantidad <= 0 || _materialSeleccionado == 'Seleccionar Material') {
      setState(() {
        _resultado = 'Ingrese una cantidad válida y seleccione un material.';
      });
      return;
    }

    final produccionPorUnidad = material['produccion'];
    final tiempoBase = material['tiempoBase'];
    final totalProduccion = (cantidad * produccionPorUnidad).floor();
    final totalSegundos = ((cantidad * tiempoBase) ~/ velocidadMultiplicador).ceil();
    final productoFinal = material['convierteEn'];

    setState(() {
      _resultado = 'Producción: $totalProduccion $productoFinal\nTiempo de quema: ${_formatearTiempo(totalSegundos)}';
    });
  }

  // Formatea el tiempo en horas, minutos y segundos
  String _formatearTiempo(int segundosTotales) {
    final horas = segundosTotales ~/ 3600;
    final minutos = (segundosTotales % 3600) ~/ 60;
    final segundos = segundosTotales % 60;
    return '${horas}h ${minutos}m ${segundos}s';
  }

  // Construye una fila de estadísticas
  Widget _buildStatRow(String label, String value, String iconPath, {void Function()? onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 24,
            height: 24,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, color: Colors.white),
          ),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Construye el widget principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange, width: 3),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'FORJA INDUSTRIAL',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(color: Colors.orange, blurRadius: 10)],
                    ),
                  ),
                  const Text(
                    'Requiere Material para ser activado.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.orange),
                  ),
                  const SizedBox(height: 16),
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (_, __) {
                      return CustomPaint(
                        painter: ParticlePainter(_animation.value),
                        child: Center(
                          child: Image.asset(
                            'assets/images/Fabricados/Forja_industrial.png', // Imagen fija de la forja
                            width: 150,
                            height: 150,
                            errorBuilder: (_, __, ___) => const Icon(Icons.error, color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _cantidadController.text.isEmpty ? 'x0' : 'x${_cantidadController.text}',
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildStatRow('Material', _materialSeleccionado, _materialAsset, onTap: _mostrarSelectorMaterial),
                  _buildStatRow('Velocidad', _velocidadQuemado, _materialAsset, onTap: _mostrarSelectorVelocidad),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      controller: _cantidadController,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Cantidad',
                        labelStyle: const TextStyle(color: Colors.white70),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (_) => _calcularResultado(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _calcularResultado,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
                    child: const Text('Calcular', style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    ' $_resultado',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.orangeAccent, fontSize: 18),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.orange),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Clase para la animación de partículas
class ParticlePainter extends CustomPainter {
  final double animationValue;

  ParticlePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.deepOrange.withOpacity(0.6)
      ..style = PaintingStyle.fill;

    final random = math.Random();

    for (int i = 0; i < 20; i++) {
      final offsetX = random.nextDouble() * size.width;
      final fallProgress = (animationValue + (i * 0.1)) % 1.0;
      final offsetY = -20 + (fallProgress * (size.height + 20));
      if (offsetY > 0 && offsetY < size.height) {
        canvas.drawCircle(Offset(offsetX, offsetY), 2.0 + random.nextDouble() * 2.0, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
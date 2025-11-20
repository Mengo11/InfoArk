import 'package:flutter/material.dart';
import 'dart:math' as math;

class PantallaCalculadoraCampoFuerzaTek extends StatefulWidget {
  const PantallaCalculadoraCampoFuerzaTek({super.key});

  @override
  PantallaCalculadoraCampoFuerzaTekState createState() =>
      PantallaCalculadoraCampoFuerzaTekState();
}

class PantallaCalculadoraCampoFuerzaTekState
    extends State<PantallaCalculadoraCampoFuerzaTek>
    with SingleTickerProviderStateMixin {
  final _controladorElemento = TextEditingController();
  final _controladorFragmentos = TextEditingController();

  double _radioSeleccionado = 1.0;
  String _resultado = 'Sin combustible';

  final List<double> _opcionesRadio =
  List.generate(19, (index) => 1.0 + (index * 0.5));

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    _controladorElemento.dispose();
    _controladorFragmentos.dispose();
    super.dispose();
  }

  double consumoElementoPorHora(double radio) {
    if (radio < 1) radio = 1;
    if (radio > 3) radio = 3;
    return 10 + (radio - 1) * (40 - 10) / 2;
  }

  double calcularHorasTotales(
      double elementos, double fragmentos, double radio) {
    double totalElementos = elementos + (fragmentos / 100);
    if (totalElementos <= 0) return 0;
    double consumoHora = consumoElementoPorHora(radio);
    return totalElementos / consumoHora;
  }

  String formatearDuracion(double horasTotales) {
    if (horasTotales <= 0) return 'Sin combustible';
    final dias = horasTotales ~/ 24;
    final horas = (horasTotales % 24).floor();
    final minutos = ((horasTotales % 1) * 60).round();
    if (dias > 0) return '$dias días, $horas horas, $minutos minutos';
    if (horas > 0) return '$horas horas, $minutos minutos';
    return '$minutos minutos';
  }

  void calcularDuracion() {
    setState(() {
      final elementos = double.tryParse(_controladorElemento.text) ?? 0.0;
      final fragmentos = double.tryParse(_controladorFragmentos.text) ?? 0.0;
      final horas = calcularHorasTotales(
          elementos, fragmentos, _radioSeleccionado);
      _resultado = formatearDuracion(horas);
    });
  }

  Widget _buildStatRow(String label, String value, String iconPath,
      {TextEditingController? controller,
        void Function(double)? onRadioChanged}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath,
              width: 24,
              height: 24,
              errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.error, color: Colors.white)),
          const SizedBox(width: 8),
          Text(label,
              style: const TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(width: 16),
          if (label == 'Radio')
            DropdownButton<double>(
              value: _opcionesRadio.contains(_radioSeleccionado)
                  ? _radioSeleccionado
                  : _opcionesRadio[0],
              items: _opcionesRadio
                  .map((value) => DropdownMenuItem<double>(
                value: value,
                child: Text(value.toStringAsFixed(1),
                    style: const TextStyle(color: Colors.white)),
              ))
                  .toList(),
              onChanged: onRadioChanged != null
                  ? (value) => onRadioChanged(value ?? 1.0)
                  : null,
              dropdownColor: Colors.grey[800],
            )
          else if (controller != null)
            Container(
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan[200]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  ),
                  onChanged: (value) {
                    setState(() {});
                    calcularDuracion();
                  },
                ),
              ),
            )
          else
            Container(
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan[200]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildResourceDisplay(String count, String iconPath) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.cyan[200]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(count,
              style: const TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(height: 4),
          Image.asset(iconPath,
              width: 60,
              height: 60,
              errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.error, color: Colors.white)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan[200]!, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    'Campo de Fuerza Tek',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    'Requiere Elemento para ser activado.',
                    style: TextStyle(fontSize: 14, color: Colors.cyan),
                  ),
                  const SizedBox(height: 16),
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return CustomPaint(
                        painter: ParticlePainter(_animation.value),
                        child: Center(
                          child: Image.asset(
                            'assets/images/Fabricados/Campo_de_fuerza_Tek.png',
                            width: 150,
                            height: 150,
                            errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.shield,
                                color: Colors.cyanAccent, size: 80),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildResourceDisplay(
                        _controladorFragmentos.text.isEmpty
                            ? 'x0'
                            : 'x${_controladorFragmentos.text}',
                        'assets/images/Recurso/Shard.png',
                      ),
                      _buildResourceDisplay(
                        _controladorElemento.text.isEmpty
                            ? 'x0'
                            : 'x${_controladorElemento.text}',
                        'assets/images/Recurso/Elemento.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildStatRow('Radio', _radioSeleccionado.toStringAsFixed(1),
                      'assets/images/Radio.png', onRadioChanged: (value) {
                        setState(() {
                          _radioSeleccionado = value;
                          calcularDuracion();
                        });
                      }),
                  _buildStatRow(
                    'Fragmentos',
                    _controladorFragmentos.text.isEmpty
                        ? '0'
                        : _controladorFragmentos.text,
                    'assets/images/Recurso/Shard.png',
                    controller: _controladorFragmentos,
                  ),
                  _buildStatRow(
                    'Elemento',
                    _controladorElemento.text.isEmpty
                        ? '0'
                        : _controladorElemento.text,
                    'assets/images/Recurso/Elemento.png',
                    controller: _controladorElemento,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: calcularDuracion,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan[700]),
                    child: const Text('Calcular',
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Duración estimada:\n$_resultado',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.cyan),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ParticlePainter extends CustomPainter {
  final double animationValue;

  ParticlePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.cyanAccent.withOpacity(0.6)
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final random = math.Random();

    for (int i = 0; i < 20; i++) {
      final offsetX = random.nextDouble() * size.width;
      final fallProgress = (animationValue + (i * 0.1)) % 1.0;
      final offsetY = -20 + (fallProgress * (size.height + 20));

      if (offsetY > 0 && offsetY < size.height) {
        canvas.drawCircle(
          Offset(offsetX, offsetY),
          2.0 + random.nextDouble() * 2.0,
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

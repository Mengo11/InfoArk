import 'package:flutter/material.dart';
import 'dart:math' as math;

class PantallaCalculadoraGeneradorTek extends StatefulWidget {
  const PantallaCalculadoraGeneradorTek({super.key});

  @override
  PantallaCalculadoraGeneradorTekState createState() => PantallaCalculadoraGeneradorTekState();
}
//-----------------------------------------(Estado y controladores)
class PantallaCalculadoraGeneradorTekState extends State<PantallaCalculadoraGeneradorTek> with SingleTickerProviderStateMixin {
  final _controladorElemento = TextEditingController();
  final _controladorFragmentos = TextEditingController();
  double _radioSeleccionado = 1.0;
  String _resultado = 'Sin combustible';

  final List<double> _opcionesRadio = List.generate(19, (index) => 1.0 + (index * 0.5));
  late AnimationController _controller;
  late Animation<double> _animation;
//-----------------------------------------(inicialización y destrucción de la animacion)
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
//-----------------------------------------(Calculos)
  double calcularConsumoElemento(double radio) {
    return 1.0 + (0.33 * (radio - 1.0));
  }

  double calcularHorasTotales(double elementos, double radio) {
    final consumoPor18Horas = calcularConsumoElemento(radio);
    return (elementos * 18.0) / consumoPor18Horas;
  }

  String formatearDuracion(double horasTotales) {
    final dias = horasTotales ~/ 24;
    final horas = (horasTotales % 24).floor();
    final minutos = ((horasTotales % 1) * 60).round();
    if (dias > 0) {
      return '$dias Days $horas Hours $minutos Minutes';
    } else {
      return '$horas Hours $minutos Minutes';
    }
  }

  void calcularDuracion() {
    setState(() {
      double elementos = 0.0;
      try {
        final entradaElemento = double.tryParse(_controladorElemento.text) ?? 0.0;
        final entradaFragmentos = double.tryParse(_controladorFragmentos.text) ?? 0.0;
        elementos = entradaElemento + (entradaFragmentos / 100.0);

        if (elementos <= 0) {
          _resultado = 'Sin combustible';
          return;
        }

        final horasTotales = calcularHorasTotales(elementos, _radioSeleccionado);
        _resultado = formatearDuracion(horasTotales);
      } catch (e) {
        _resultado = 'Entrada inválida';
      }
    });
  }
//-----------------------------------------(Vista Principal)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan[200]!, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Tek Generator',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const Text(
                    'Requiere Elemento para ser activado.',
                    textAlign: TextAlign.center,
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
                            'assets/images/Fabricados/Generador_Tek.png',
                            width: 150,
                            height: 150,
                            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, color: Colors.white),
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
                        _controladorFragmentos.text.isEmpty ? 'x0' : 'x${_controladorFragmentos.text}',
                        'assets/images/Recurso/Shard.png',
                        100,
                        100,
                      ),
                      _buildResourceDisplay(
                        _controladorElemento.text.isEmpty ? 'x0' : 'x${_controladorElemento.text}',
                        'assets/images/Recurso/Elemento.png',
                        100,
                        100,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildStatRow('Radio', _radioSeleccionado.toStringAsFixed(1), 'assets/images/Radio.png', onRadioChanged: (value) {
                    setState(() {
                      _radioSeleccionado = value;
                      calcularDuracion();
                    });
                  }),
                  _buildStatRow('Shard', _controladorFragmentos.text.isEmpty ? '0' : _controladorFragmentos.text, 'assets/images/Recurso/Shard.png', controller: _controladorFragmentos),
                  _buildStatRow('Elemento', _controladorElemento.text.isEmpty ? '0' : _controladorElemento.text, 'assets/images/Recurso/Elemento.png', controller: _controladorElemento),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: calcularDuracion,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan[700]),
                    child: const Text('Calcular', style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Tiempo\nAntes: $_resultado',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.cyan),
                  ),
                ],
              ),
            ),
            // Botón de volver
//-----------------------------------------(Header)
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.cyan),
                onPressed: () {
                  Navigator.pop(context); // Regresa al menú
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
//-----------------------------------------(Widgets)
  Widget _buildStatRow(String label, String value, String iconPath, {TextEditingController? controller, void Function(double)? onRadioChanged}) {
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
          if (label == 'Radio')
            DropdownButton<double>(
              value: _opcionesRadio.contains(_radioSeleccionado) ? _radioSeleccionado : _opcionesRadio[0],
              items: _opcionesRadio.map<DropdownMenuItem<double>>((double value) {
                return DropdownMenuItem<double>(
                  value: value,
                  child: Text(value.toStringAsFixed(1), style: const TextStyle(color: Colors.white)),
                );
              }).toList(),
              onChanged: onRadioChanged != null ? (value) => onRadioChanged(value ?? 1.0) : null,
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

  Widget _buildResourceDisplay(String count, String iconPath, double width, double height) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.cyan[200]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count,
            style: const TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Image.asset(
            iconPath,
            width: 60,
            height: 60,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
//-----------------------------------------(Animación)
class ParticlePainter extends CustomPainter {
  final double animationValue;

  ParticlePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue.withOpacity(0.6)
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

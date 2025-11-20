import 'package:flutter/material.dart';

class TribeMapPage extends StatelessWidget {
  final String imageUrl = 'https://cdn.discordapp.com/attachments/.../latest_tribemap.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tribe Map Actualizado")),
      body: RefreshIndicator(
        onRefresh: () async {
          // Aquí podrías actualizar lógica si necesitás (por ahora solo refresca la imagen)
        },
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                imageUrl,
                key: UniqueKey(), // fuerza refresco
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return Center(child: Text("No se pudo cargar el mapa."));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

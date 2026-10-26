import 'package:flutter/material.dart';

class IconEjemplosPantalla extends StatelessWidget {
  const IconEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Icon')),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.terrain, size: 48, color: Colors.teal),
          const Icon(Icons.favorite),
          const Icon(Icons.check_circle, semanticLabel: 'Ruta completada'),
          const Icon(
            Icons.arrow_back,
            textDirection: TextDirection.rtl,
            semanticLabel: 'Atrás',
          ),
          SizedBox(
            child: IconButton(
              tooltip: 'Guardar ruta',
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {
                debugPrint('Pulsación en guardar ruta');
              },
            ),
          ),
          FilledButton.icon(
            onPressed: () {
              debugPrint('Accion de guardar');
            },
            icon: const Icon(Icons.bookmark_add_outlined),
            label: const Text("Guardar"),
          ),
        ],
      ),
    );
  }
}

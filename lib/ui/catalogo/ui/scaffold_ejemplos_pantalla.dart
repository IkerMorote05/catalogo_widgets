import 'package:flutter/material.dart';

class ScaffoldEjemplosPantalla extends StatelessWidget {
  const ScaffoldEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Scaffold')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text('Acciones de la sección'),
              actions: [
                IconButton(
                  tooltip: 'Información',
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    debugPrint('Información');
                  },
                ),
              ],
            ),
            body: const Text('Prueba la acción de información'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Contenedores1EjemplosPantalla extends StatelessWidget {
  const Contenedores1EjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de contenedores')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            width: 240,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.teal.shade50,
              border: Border.all(color: Colors.teal.shade50, width: 2),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: const Text("Esto es un container"),
          ),
        ],
      ),
    );
  }
}

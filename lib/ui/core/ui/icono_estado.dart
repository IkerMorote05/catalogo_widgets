import 'package:flutter/material.dart';

enum EstadoRuta { pendiente, completada, error }

class IconoEstado extends StatelessWidget {
  final EstadoRuta estado;
  final double tamano;

  const IconoEstado({super.key, required this.estado, this.tamano = 32});

  Icon iconofinal() {
    final iconos = switch (estado) {
      EstadoRuta.pendiente => Icon(
        Icons.pending_actions_outlined,
        color: Colors.orange,
        semanticLabel: "Estado pendiente",
        size: tamano,
      ),
      EstadoRuta.completada => Icon(
        Icons.done_rounded,
        color: Colors.green,
        semanticLabel: "Estado finalizado",
        size: tamano,
      ),
      EstadoRuta.error => Icon(
        Icons.error,
        color: Colors.red,
        semanticLabel: "Error",
        size: tamano,
      ),
    };
    return iconos;
  }

  @override
  Widget build(BuildContext context) {
    return iconofinal();
  }
}

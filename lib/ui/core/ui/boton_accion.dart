import 'package:flutter/material.dart';

class BotonAccion extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;
  final bool destacado;

  const BotonAccion({
    super.key,
    required this.texto,
    this.onPressed = null,
    this.destacado = false,
  });

  FilledButton boton() {
    if (destacado == true) {
      return FilledButton(
        onPressed: onPressed,
        child: Text(texto),
        style: FilledButton.styleFrom(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
      );
    } else {
      return FilledButton(
        onPressed: onPressed,
        child: Text(texto),
        style: FilledButton.styleFrom(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return boton();
  }
}

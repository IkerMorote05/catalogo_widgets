import 'package:flutter/material.dart';

class BotonAccion extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;
  final bool destacado;

  const BotonAccion({
    super.key,
    required this.texto,
    this.onPressed,
    this.destacado = false,
  });

  FilledButton boton() {
    if (destacado == true) {
      return FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        child: Text(texto),
      );
    } else {
      return FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
        ),
        child: Text(texto),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return boton();
  }
}

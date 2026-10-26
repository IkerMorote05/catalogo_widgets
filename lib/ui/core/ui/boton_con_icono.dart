import 'package:flutter/material.dart';

class BotonConIcono extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback? onPressed;
  final bool secundario;

  const BotonConIcono({
    required this.texto,
    required this.icono,
    this.onPressed,
    this.secundario = false,
  });

  @override
  Widget build(BuildContext context) {
    if (secundario == true) {
      return OutlinedButton.icon(
        onPressed: onPressed,
        label: Text(texto),
        icon: Icon(icono),
      );
    } else {
      return FilledButton.icon(
        onPressed: onPressed,
        label: Text(texto),
        icon: Icon(icono),
      );
    }
  }
}

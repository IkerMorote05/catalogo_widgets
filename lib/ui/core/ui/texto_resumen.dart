import 'package:flutter/material.dart';

class TextoResumen extends StatelessWidget {
  final String texto;
  final int lineas;
  final bool centrado;

  const TextoResumen({
    required this.texto,
    this.lineas = 2,
    this.centrado = false,
  });

  @override
  Widget build(BuildContext context) {
    final centro = centrado ? TextAlign.center : TextAlign.left;
    return Text(
      texto,
      maxLines: lineas,
      textAlign: centro,
      overflow: TextOverflow.ellipsis,
    );
  }
}

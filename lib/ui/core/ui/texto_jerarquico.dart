import 'package:flutter/material.dart';

enum TipoTexto { titulo, subtitulo, cuerpo }

class TextoJerarquico extends StatelessWidget {
  final String texto;
  final TipoTexto tipoTexto;
  final bool underlined;

  const TextoJerarquico({
    super.key,
    required this.texto,
    this.tipoTexto = TipoTexto.cuerpo,
    this.underlined = false,
  });

  TextStyle getStyles() {
    final estilo = switch (tipoTexto) {
      TipoTexto.titulo => TextStyle(
        fontSize: 22,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        decoration: underlined ? TextDecoration.underline : TextDecoration.none,
      ),
      TipoTexto.cuerpo => TextStyle(
        fontSize: 19,
        color: Colors.indigoAccent,
        fontWeight: FontWeight.normal,
        decoration: underlined ? TextDecoration.underline : TextDecoration.none,
      ),
      TipoTexto.subtitulo => TextStyle(
        fontSize: 16.5,
        color: Colors.blueGrey,
        fontWeight: FontWeight.normal,
        decoration: underlined ? TextDecoration.underline : TextDecoration.none,
      ),
    };
    return estilo;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle estilo = getStyles();
    return Text(texto, style: estilo);
  }
}

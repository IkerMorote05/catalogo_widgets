import "package:flutter/material.dart";

class ImagenRuta extends StatelessWidget {
  final String rutaAsset;
  final bool panoramica;
  final String descripcion;

  const ImagenRuta({
    super.key,
    required this.rutaAsset,
    this.panoramica = false,
    this.descripcion = 'Sin descripcion',
  });

  @override
  Widget build(BuildContext context) {
    final double ancho = panoramica ? 180 : 120;
    final double alto = panoramica ? 240 : 300;

    return Image.asset(
      rutaAsset,
      width: ancho,
      height: alto,
      semanticLabel: descripcion,
    );
  }
}

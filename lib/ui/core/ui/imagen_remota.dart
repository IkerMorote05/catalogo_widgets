import 'package:flutter/material.dart';

class ImagenRemota extends StatelessWidget {
  final String url;
  final BoxFit ajuste;
  final bool decorativa;
  final String? descripcion;

  const ImagenRemota({
    super.key,
    required this.url,
    this.ajuste = BoxFit.cover,
    this.decorativa = false,
    this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    final desc = decorativa ? descripcion : "";
    return Image.network(
      url,
      fit: ajuste,
      semanticLabel: desc,
      alignment: Alignment.topCenter,
      errorBuilder: (context, error, stackTrace) => SizedBox(
        height: 160,
        child: Center(
          child: Image.network(
            "https://imgs.search.brave.com/hK2wSxp2XDnkqr_vgt57-h_4WEvrBJVMiXKMLn-YCdo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9wYWdp/bmFjaSVDMyVCM24t/bm8tZW5jb250cmFk/YS00NTIzODMzMS5q/cGc",
            height: 160,
          ),
        ),
      ),
    );
  }
}

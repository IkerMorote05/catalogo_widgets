import 'package:catalogo_widgets/ui/core/ui/etiqueta_catalogo.dart';
import 'package:catalogo_widgets/ui/core/ui/texto_jerarquico.dart';
import 'package:catalogo_widgets/ui/core/ui/texto_resumen.dart';
import 'package:flutter/material.dart';

class TextEjemplosPantalla extends StatelessWidget {
  const TextEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Text')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Ruta de la cascada'),
          SizedBox(height: 16),
          const Text(
            'Ruta de la cascada',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          SizedBox(height: 16),
          EtiquetaCatalogo(
            texto: "Ruta destacada",
            variante: VarianteEtiqueta.destacada,
          ),
          SizedBox(height: 16),
          EtiquetaCatalogo(
            texto: "Ruta destacada",
            variante: VarianteEtiqueta.aviso,
          ),
          SizedBox(height: 16),
          EtiquetaCatalogo(
            texto: "Ruta no destacada",
            variante: VarianteEtiqueta.normal,
          ),
          SizedBox(height: 16),
          const Center(
            child: SizedBox(
              width: 240,
              child: Text('Una ruta fácil', textAlign: TextAlign.center),
            ),
          ),
          SizedBox(height: 16),
          const Center(
            child: SizedBox(
              width: 240,
              child: Text(
                'Un recorrido entre árboles que termina junto a una cascada. '
                'El sendero continúa hasta el mirador de la montaña.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(height: 16),
          const Center(
            child: SizedBox(
              width: 240,
              child: Text(
                'Una descripción más larga que el espacio disponible',
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          const Text('12 km', semanticsLabel: 'Doce kilómetros'),
          TextoJerarquico(texto: "Titulo", tipoTexto: TipoTexto.titulo),
          TextoJerarquico(texto: "Cuerpo", tipoTexto: TipoTexto.cuerpo),
          TextoJerarquico(texto: "Subtitulo", tipoTexto: TipoTexto.subtitulo),
          const Center(
            child: SizedBox(
              width: 220,
              child: TextoResumen(
                texto: 'Un recorrido largo que permite comparar las líneas visibles \n esto es otra linea.',
                lineas: 1,
                centrado: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:catalogo_widgets/ui/core/ui/etiqueta_catalogo.dart';
import 'package:catalogo_widgets/ui/core/ui/texto_jerarquico.dart';
import 'package:catalogo_widgets/ui/core/ui/texto_resumen.dart';
import 'package:flutter/material.dart';

class TextEjemplosPantalla extends StatelessWidget {
  const TextEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catálogo de widgets · Text',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Texto con etiqueta',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Muestra de texto con etiqueta destacada, aviso y normal",
                  ),
                  SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'texto',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ": Obligatorio. Es el texto que se muestra",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Variante',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text:
                              ": opcional. Por defecto EtiquetaCatalogo.normal",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Ejemplo de uso",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color(0xFFD1D5DB)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "const EtiquetaCatalogo(\n"
                          "texto: 'Ruta destacada',\n"
                          "variante: VarianteEtiqueta.destacada\n"
                          ")",
                          style: TextStyle(
                            fontFamily: "monospace",
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Resultado",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  EtiquetaCatalogo(
                    texto: "Ruta destacada",
                    variante: VarianteEtiqueta.destacada,
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Texto Jerarquico",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text("Muestra texto con tres niveles de jerarquia."),
                  SizedBox(height: 20),
                  Text(
                    "Cómo utilizarlo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "texto",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "monospace",
                          ),
                        ),
                        TextSpan(text: ": obligatorio. Texto que se muestra."),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'tipo',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': opcional. Por defecto, TipoTexto.cuerpo.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ejemplo de uso',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 3, 3, 3),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color(0xFFD1D5DB)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(20),
                        child: SelectableText(
                          "const TextoJerarquico(\n"
                          "  texto: 'Ruta del río',\n"
                          "  tipo: TipoTexto.titulo,\n"
                          "),",
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color(0xFFD1D5DB)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(20),
                        child: SelectableText(
                          "const TextoJerarquico(\n"
                          "  texto: 'La ruta del rio por la senda de los naranjos',\n"
                          "  tipo: TipoTexto.cuerpo,\n"
                          "),",
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 7, 7, 7),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color(0xFFD1D5DB)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(20),
                        child: SelectableText(
                          "const TextoJerarquico(\n"
                          "  texto: 'Una preciosa ruta por los naranjos en flor hacia el nacimiento del rio',\n"
                          "  tipo: TipoTexto.subtitulo,\n"
                          "),",
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Resultado',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  TextoJerarquico(
                    texto: 'Ruta del río',
                    tipoTexto: TipoTexto.titulo,
                  ),
                  SizedBox(height: 12),
                  TextoJerarquico(
                    texto: 'La ruta del rio por la senda de los naranjos',
                    tipoTexto: TipoTexto.cuerpo,
                  ),
                  SizedBox(height: 12),
                  TextoJerarquico(
                    texto: 'Una preciosa ruta por los naranjos en flor hacia el nacimiento del rio',
                    tipoTexto: TipoTexto.subtitulo,
                  ),
                ],
              ),
            ),
          ),

          const Center(
            child: SizedBox(
              width: 220,
              child: TextoResumen(
                texto: 'Un recorrido largo que permite comparar las líneas visibles, esto es otra linea.',
                lineas: 2,
                centrado: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

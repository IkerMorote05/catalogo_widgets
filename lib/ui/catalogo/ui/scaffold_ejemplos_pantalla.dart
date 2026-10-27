import 'package:catalogo_widgets/ui/core/ui/boton_aviso.dart';
import 'package:catalogo_widgets/ui/core/ui/pantalla_demostracion.dart';
import 'package:flutter/material.dart';

class ScaffoldEjemplosPantalla extends StatelessWidget {
  const ScaffoldEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return PantallaDemostracion(
      titulo: "Catalogo Widget · Scaffold",
      contenido: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pantalla Demostración",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Muestra un scaffold con appbar personalizado'),
                  SizedBox(height: 20),
                  Text(
                    "Propiedades",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'titulo',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ': obligatorio. necesita un titulo.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Contenido',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text:
                              ': obligatoria. necesita un widget de contenido.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'destacada',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ': opcional. que salga o no destacado.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'centrar titulo',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ': opcional. que salga o no centrado.'),
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
                        color: Color(0xFFF3F4F6),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color(0xFFD1D5DB)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "const PantallaDemostracion(\n"
                          "  titulo: 'Catalogo widgets · Scaffold'\n"
                          "  contenido: (toda esta estructura),\n"
                          "  centrarTitulo: true,\n"
                          "  destacada: true"
                          "),",
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Resultado',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 12),
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
                children: [
                  Text(
                    "Boton de Aviso",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Muestra un Snackbar fijo o flotante durante un tiempo y con un mensaje',
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Propiedades",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Etiqueta',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ': obligatorio. necesita la etiqueta.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Mensaje',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatoria. necesita el mensaje a mostrar.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Flotante',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': opcional. por defecto false, es para que sea fijo o flotante.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Segundos',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text:
                              ': opcional. por defect 3, es para la duración .',
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
                        color: Color(0xFFF3F4F6),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color(0xFFD1D5DB)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "const BotonAviso(\n"
                          "  etiqueta: 'Alerta'\n"
                          "  mensaje: 'Este es un boton de aviso flotante',\n"
                          "  flotante: true,\n"
                          "  segundos: 5\n"
                          "),",
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Resultado',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 12),
                  BotonAviso(
                    etiqueta: "Alerta",
                    mensaje: "Este es un boton de aviso flotante",
                    flotante: true,
                    segundos: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      centrarTitulo: true,
      destacada: true,
    );
  }
}

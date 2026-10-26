import 'package:catalogo_widgets/ui/core/ui/icono_estado.dart';
import 'package:catalogo_widgets/ui/core/ui/icono_favorito.dart';
import 'package:flutter/material.dart';

class IconEjemplosPantalla extends StatelessWidget {
  const IconEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalogo Widget · Iconos',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.terrain, size: 48, color: Colors.teal),
              const Icon(Icons.favorite),
              const Icon(Icons.check_circle, semanticLabel: 'Ruta completada'),
              const Icon(
                Icons.arrow_back,
                textDirection: TextDirection.rtl,
                semanticLabel: 'Atrás',
              ),
              SizedBox(
                child: IconButton(
                  tooltip: 'Guardar ruta',
                  icon: const Icon(Icons.bookmark_border),
                  onPressed: () {
                    debugPrint('Pulsación en guardar ruta');
                  },
                ),
              ),
              FilledButton.icon(
                onPressed: () {
                  debugPrint('Accion de guardar');
                },
                icon: const Icon(Icons.bookmark_add_outlined),
                label: const Text("Guardar"),
              ),
            ],
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Icono Estado",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Muestra los iconos de un estado como finalizado, error o pendiente",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Propiedades",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Estado",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text:
                              ": Obligatorio, sin eso no sabe que icono poner",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Tamano",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ": Opcional, por defecto pone 32"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ejemplo de uso',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Ejemplo Pendiente"),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 10, 10, 10),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "const IconoEstado(\n"
                          "   estado: EstadoRuta.pendiente \n"
                          "   tamano: 34\n"
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
                  SizedBox(height: 8),
                  Text("Ejemplo Completada"),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 10, 10, 10),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "const IconoEstado(\n"
                          "   estado: EstadoRuta.completada \n"
                          "   tamano: 34\n"
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
                  SizedBox(height: 8),
                  Text("Ejemplo error"),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 10, 10, 10),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "const IconoEstado(\n"
                          "   estado: EstadoRuta.error \n"
                          "   tamano: 34\n"
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
                  Text("Resultado"),
                  SizedBox(height: 12),
                  IconoEstado(estado: EstadoRuta.pendiente, tamano: 34),
                  SizedBox(height: 12),
                  IconoEstado(estado: EstadoRuta.error, tamano: 34),
                  SizedBox(height: 12),
                  IconoEstado(estado: EstadoRuta.completada, tamano: 34),
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
                    "Icono Favorito",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Muestra si es favorito o no"),
                  SizedBox(height: 20),
                  Text(
                    "Propiedades",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Marcado",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text:
                              ": Obligatorio, sin eso no sabe que icono poner",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Tamano",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ": Opcional, por defecto pone 32"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ejemplo de uso',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Ejemplo Favorito"),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 10, 10, 10),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "const IconoFavorito(\n"
                          "   marcado : true \n"
                          "   tamano: 34\n"
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
                  SizedBox(height: 8),
                  Text("Ejemplo no Favorito"),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 10, 10, 10),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "const IconoFavorito(\n"
                          "  marcado: false\n"
                          "   tamano: 34\n"
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
                  Text("Resultado"),
                  SizedBox(height: 12),
                  IconoFavorito(marcado: true, tamano: 34),
                  SizedBox(height: 12),
                  IconoFavorito(marcado: false, tamano: 34),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

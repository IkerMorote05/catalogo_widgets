import 'package:catalogo_widgets/ui/core/ui/imagen_remota.dart';
import 'package:catalogo_widgets/ui/core/ui/imagen_ruta.dart';
import 'package:flutter/material.dart';

class ImageEjemplosPantalla extends StatelessWidget {
  const ImageEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalogo Widget · Image',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Aquí añadiremos los ejemplos del tutorial.

          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            width: 280,
            height: 220,
            alignment: Alignment.topCenter,
            semanticLabel: 'Un búho posado en una rama',
            errorBuilder: (context, error, stackTrace) => SizedBox(
              height: 160,
              child: Center(
                child: Image.network(
                  "https://imgs.search.brave.com/hK2wSxp2XDnkqr_vgt57-h_4WEvrBJVMiXKMLn-YCdo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9wYWdp/bmFjaSVDMyVCM24t/bm8tZW5jb250cmFk/YS00NTIzODMzMS5q/cGc",
                  height: 160,
                ),
              ),
            ),
            loadingBuilder: (context, child, progreso) {
              if (progreso == null) return child;
              return const SizedBox(
                height: 160,
                child: Center(child: CircularProgressIndicator()),
              );
            },
          ),
          SizedBox(height: 50),
          Image.asset(
            "assets/images/homer-simpson-homer-dance.gif",
            width: 240,
            height: 400,
          ),
          SizedBox(height: 20),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Imagen Remota",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Muestra una imagen pasada por url con tamaño y descripcion definido',
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
                          text: 'URL',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatorio. Es el enlace de la imagen.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ajuste',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatoria. Si se activa sale con el predefinido cover.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'decorativa',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': opcional. Si se activa se necesita la descripcion.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Descripcion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ': opcional. Texto que se muestra.'),
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
                          "const ImagenRemota(\n"
                          "  url: 'https://imgs.search.brave.com/qEcmTzTcsz9r1WWbVru-W4iDwADJ7wfYCh3WeRimHbc/rs:fit:0:180:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvdGh1bWJu/YWlsL2NhcnRvb24t/aG9tZXItc2ltcHNv/bi1lYXRpbmcteGFx/c2Q1emRqbTcyZXEz/NS5qcGc',\n"
                          "  ajuste: BoxFit.cover,\n"
                          "  decorativa: true, \n"
                          "  descripcion: 'imagen homer simpson',"
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
                  ImagenRemota(
                    url: "https://imgs.search.brave.com/qEcmTzTcsz9r1WWbVru-W4iDwADJ7wfYCh3WeRimHbc/rs:fit:0:180:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvdGh1bWJu/YWlsL2NhcnRvb24t/aG9tZXItc2ltcHNv/bi1lYXRpbmcteGFx/c2Q1emRqbTcyZXEz/NS5qcGc",
                    ajuste: BoxFit.cover,
                    decorativa: true,
                    descripcion: "homer simpson",
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
                children: [
                  Text(
                    "Imagen Ruta",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Muestra una imagen pasada por ruta con tamaño y descripcion definido',
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
                          text: 'rutaAsset',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatorio. Es la ruta de la imagen.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Panoramica',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ': obligatoria. define el tamaño.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Descripcion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ': opcional. Texto que se muestra.'),
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
                          "const ImagenRuta(\n"
                          "  rutaAsset: assets/images/bart-simpson-working.gif,\n"
                          "  panoramica: true,\n"
                          "  descripcion: 'imagen bart simpson',"
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
                  ImagenRuta(
                    rutaAsset: "assets/images/bart-simpson-workin.gif",
                    panoramica: true,
                    descripcion: "Bart simpson",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//  Card(
//             clipBehavior: Clip.antiAlias,
//             child: Padding(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     'TextoJerarquico',
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Text('Muestra texto con tres niveles de jerarquía.'),
//                   SizedBox(height: 20),
//                   Text(
//                     'Propiedades',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Text.rich(
//                     TextSpan(
//                       children: [
//                         TextSpan(
//                           text: 'texto',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'monospace',
//                           ),
//                         ),
//                         TextSpan(text: ': obligatorio. Texto que se muestra.'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 6),
//                   Text.rich(
//                     TextSpan(
//                       children: [
//                         TextSpan(
//                           text: 'tipo',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'monospace',
//                           ),
//                         ),
//                         TextSpan(
//                           text: ': opcional. Por defecto, TipoTexto.cuerpo.',
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     'Ejemplo de uso',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   SizedBox(
//                     width: double.infinity,
//                     child: DecoratedBox(
//                       decoration: BoxDecoration(
//                         color: Color(0xFFF3F4F6),
//                         borderRadius: BorderRadius.all(Radius.circular(8)),
//                         border: Border.fromBorderSide(
//                           BorderSide(color: Color(0xFFD1D5DB)),
//                         ),
//                       ),
//                       child: SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         padding: EdgeInsets.all(16),
//                         child: SelectableText(
//                           "TextoJerarquico(\n"
//                           "  texto: 'Ruta del río',\n"
//                           "  tipo: TipoTexto.titulo,\n"
//                           "),",
//                           style: TextStyle(
//                             fontFamily: 'monospace',
//                             fontSize: 14,
//                             height: 1.5,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     'Resultado',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 12),
//                   TextoJerarquico(
//                     texto: 'Ruta del río',
//                     tipo: TipoTexto.titulo,
//                   ),
//                 ],
//               ),
//             ),
//           ),

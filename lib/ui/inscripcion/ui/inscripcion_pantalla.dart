import 'package:catalogo_widgets/ui/inscripcion/ui/detalle_usuario_pantalla.dart';
import 'package:flutter/material.dart';

import '../view_models/inscripcion_viewmodel.dart';

class InscripcionPantalla extends StatefulWidget {
  const InscripcionPantalla({super.key, required this.viewModel});
  final InscripcionViewModel viewModel;

  @override
  State<InscripcionPantalla> createState() => _InscripcionPantallaState();
}

class _InscripcionPantallaState extends State<InscripcionPantalla> {
  final _formKey = GlobalKey<FormState>();
  final _correoFocus = FocusNode();
  late final TextEditingController _nombreController;
  late final TextEditingController _correoController;

  @override
  void initState() {
    super.initState();
    _nombreController = TextEditingController(text: widget.viewModel.nombre);
    _correoController = TextEditingController(text: widget.viewModel.correo);
    _nombreController.addListener(_actualizarNombre);
    _correoController.addListener(_actualizarCorreo);
  }

  void _actualizarNombre() {
    if (_nombreController.text != widget.viewModel.nombre) {
      widget.viewModel.cambiarNombre(_nombreController.text);
    }
  }

  void _actualizarCorreo() {
    if (_correoController.text != widget.viewModel.correo) {
      widget.viewModel.cambiarCorreo(_correoController.text);
    }
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _correoController.dispose();
    super.dispose();
  }

  void _login() {
    FocusScope.of(context).unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final resultado = widget.viewModel.login();
    if (resultado == null) return;
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        builder: (_) => DetalleUsuarioPantalla(acceso: resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final vm = widget.viewModel;
    return Scaffold(
      appBar: AppBar(title: const Text('Login de demostración')),
      body: SafeArea(
        child: ListenableBuilder(
          listenable: vm,
          builder: (context, _) => Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                TextFormField(
                  validator: vm.validarNombre,
                  initialValue: vm.nombre,
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  onChanged: vm.cambiarNombre,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => _correoFocus.requestFocus(),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  validator: vm.validarCorreo,
                  initialValue: vm.correo,
                  decoration: const InputDecoration(labelText: 'Correo'),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: vm.cambiarCorreo,
                  focusNode: _correoFocus,
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                ),
                DropdownButtonFormField<String>(
                  initialValue: vm.tallerId,
                  isExpanded: true,
                  decoration: const InputDecoration(labelText: 'Taller'),
                  items: vm.talleres
                      .map(
                        (taller) => DropdownMenuItem<String>(
                          value: taller.id,
                          child: Text(taller.titulo),
                        ),
                      )
                      .toList(),
                  onChanged: vm.cambiarTaller,
                  validator: vm.validarTaller,
                ),
                CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Quiero recibir un recordatorio'),
                  subtitle: const Text(
                    'Opcional. No se enviará ningún mensaje.',
                  ),
                  value: vm.recordatorio,
                  onChanged: (valor) => vm.cambiarRecordatorio(valor ?? false),
                ),
                if (vm.error != null)
                  Text(vm.error!, semanticsLabel: 'Error: ${vm.error}'),
                const SizedBox(height: 16),
                FilledButton(onPressed: _login, child: const Text('Login')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import '../models/ejemploForm/usuario_inscripcion.dart';
import '../models/ejemploForm/taller.dart';

abstract class InscripcionesRepository {
  List<Taller> obtenerTalleres();
  UsuarioInscripcion? buscarUsuario(String nombre, String correo);
}

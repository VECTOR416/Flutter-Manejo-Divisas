class Cuenta {
  final int id;
  final String nombre;
  final bool estado;
  final double total;
  Cuenta(this.nombre, this.estado, this.total, {required this.id});
}
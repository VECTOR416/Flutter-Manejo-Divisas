import 'package:isar/isar.dart';

part 'cuenta.g.dart';

@collection
class Cuenta {
  Id id = Isar.autoIncrement;
  final String nombre;
  final bool estado;
  final double total;
  Cuenta(this.nombre, this.estado, this.total, {required this.id});
}
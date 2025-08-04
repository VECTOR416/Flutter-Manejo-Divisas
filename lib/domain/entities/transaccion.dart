import 'package:isar/isar.dart';

part 'transaccion.g.dart';

@collection
class Transaccion {
  Id id = Isar.autoIncrement;
  final String descripcion;
  final DateTime fecha;
  final bool estado;
  final int idCategoria;
  final int idCuenta;
  final double monto;

  Transaccion({
    required this.id, 
    required this.descripcion, 
    required this.fecha, 
    required this.estado, 
    required this.idCategoria, 
    required this.idCuenta, 
    required this.monto
  });
}
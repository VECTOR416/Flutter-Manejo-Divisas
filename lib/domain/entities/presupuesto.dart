import 'package:isar/isar.dart';

part 'presupuesto.g.dart';

@collection
class Presupuesto {
  Id id = Isar.autoIncrement;
  final String nombre;
  final DateTime fechaInicio;
  final DateTime fechaFinalizacion;
  final bool estado;
  final int idCategoria;
  final double total;
  final double gastado;
  final bool superado;

  Presupuesto({
    required this.id,
    required this.nombre,
    required this.fechaInicio,
    required this.fechaFinalizacion,
    required this.estado,
    required this.idCategoria,
    required this.total,
    required this.gastado,
    required this.superado,
  });
}

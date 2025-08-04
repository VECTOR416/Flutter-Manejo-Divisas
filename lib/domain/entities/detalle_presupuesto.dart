import 'package:isar/isar.dart';

//part 'detallepresupuesto.g.dart';

@collection
class DetallePresupuesto {
  Id id = Isar.autoIncrement;
  final int idPresupuesto;
  final String descripcion;
  final int idCategoria;
  final double total;
  final bool estado;

  DetallePresupuesto({
    required this.id, 
    required this.idPresupuesto, 
    required this.descripcion, 
    required this.idCategoria, 
    required this.total, 
    required this.estado
  });
}
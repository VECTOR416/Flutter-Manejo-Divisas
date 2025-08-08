
class Categoria {
  final int id;
  final String nombre;
  final int tipoCategoria;
  final bool estado;
  final int idCategoria;
  final bool borrable;
  final int cantidadTransacciones;
  final bool tipoGasto;


  Categoria(
    {
      required this.id, 
      required this.nombre, 
      required this.tipoCategoria, 
      required this.estado, 
      required this.idCategoria, 
      required this.borrable, 
      required this.cantidadTransacciones, 
      required this.tipoGasto
    });
}
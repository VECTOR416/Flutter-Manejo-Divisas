import 'package:manejo_divisas/domain/entities/entities.dart';

abstract class CuentaDatasource {
  Future<Cuenta> crearCuenta( Cuenta cuenta );
  Future<Cuenta> actualizarCuenta( int idCuenta ,Cuenta cuenta );
  Future<Cuenta> eliminarCuenta(int idCuenta);
  Future<Cuenta> obtenerCuenta(int idCuenta);
  Future<Cuenta> listarCuentas({ int limit = 10, offset = 0 });
}
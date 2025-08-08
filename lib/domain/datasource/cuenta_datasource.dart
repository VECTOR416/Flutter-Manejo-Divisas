import 'package:manejo_divisas/domain/dtos/cuenta/register_cuenta.dart';
import 'package:manejo_divisas/domain/dtos/cuenta/update_cuenta.dart';
import 'package:manejo_divisas/domain/entities/entities.dart';

abstract class CuentaDatasource {
  Future<Cuenta> crearCuenta( RegisterCuenta registerCuenta );
  Future<Cuenta> actualizarCuenta( int idCuenta , UpdateCuenta updateCuenta );
  Future<bool> eliminarCuenta(int idCuenta);
  Future<Cuenta> obtenerCuenta(int idCuenta);
  Future<List<Cuenta>> listarCuentas({ int limit = 10, offset = 0 });
}
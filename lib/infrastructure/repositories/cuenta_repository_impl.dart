import 'package:manejo_divisas/domain/datasource/cuenta_datasource.dart';
import 'package:manejo_divisas/domain/entities/cuenta.dart';
import 'package:manejo_divisas/domain/repositories/cuenta_repository.dart';

class CuentaRepositoryImpl implements CuentaRepository{
  final CuentaDatasource datasource;

  CuentaRepositoryImpl({required this.datasource});

  @override
  Future<Cuenta> actualizarCuenta(int idCuenta, Cuenta cuenta) {
    return datasource.actualizarCuenta(idCuenta, cuenta);
  }

  @override
  Future<Cuenta> crearCuenta(Cuenta cuenta) {
    return datasource.crearCuenta(cuenta);
  }

  @override
  Future<Cuenta> eliminarCuenta(int idCuenta) {
    return datasource.eliminarCuenta(idCuenta);
  }

  @override
  Future<Cuenta> listarCuentas({int limit = 10, offset = 0}) {
    return datasource.listarCuentas(limit: limit, offset: offset);
  }

  @override
  Future<Cuenta> obtenerCuenta(int idCuenta) {
    return datasource.obtenerCuenta(idCuenta);
  }

}
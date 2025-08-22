import 'package:manejo_divisas/domain/datasource/cuenta_datasource.dart';
import 'package:manejo_divisas/domain/dtos/cuenta/register_cuenta.dart';
import 'package:manejo_divisas/domain/dtos/cuenta/update_cuenta.dart';
import 'package:manejo_divisas/domain/entities/cuenta.dart';
import 'package:manejo_divisas/domain/repositories/cuenta_repository.dart';

class CuentaRepositoryImpl implements CuentaRepository{
  final CuentaDatasource datasource;

  CuentaRepositoryImpl({required this.datasource});

  @override
  Future<Cuenta> actualizarCuenta(int idCuenta, UpdateCuenta updateCuenta) {
    // TODO: implement actualizarCuenta
    throw UnimplementedError();
  }

  @override
  Future<Cuenta> crearCuenta(RegisterCuenta registerCuenta) {
    // TODO: implement crearCuenta
    throw UnimplementedError();
  }

  @override
  Future<bool> eliminarCuenta(int idCuenta) {
    // TODO: implement eliminarCuenta
    throw UnimplementedError();
  }

  @override
  Future<List<Cuenta>> listarCuentas({int limit = 10, offset = 0}) {
    // TODO: implement listarCuentas
    throw UnimplementedError();
  }

  @override
  Future<Cuenta> obtenerCuenta(int idCuenta){
    return datasource.obtenerCuenta(idCuenta);
  }
}
import 'package:manejo_divisas/domain/datasource/cuenta_datasource.dart';
import 'package:manejo_divisas/domain/dtos/cuenta/register_cuenta.dart';
import 'package:manejo_divisas/domain/dtos/cuenta/update_cuenta.dart';
import 'package:manejo_divisas/domain/entities/cuenta.dart';

class CuentaFakeDatasource implements CuentaDatasource{
  @override
  Future<Cuenta> actualizarCuenta(int idCuenta, UpdateCuenta updateCuenta) async{
    return Cuenta('Principal', true, 100.0, id: 1);
  }

  @override
  Future<Cuenta> crearCuenta(RegisterCuenta registerCuenta) {
    return Future.value(Cuenta(registerCuenta.nombre, registerCuenta.estado, registerCuenta.total, id: 1));
  }

  @override
  Future<bool> eliminarCuenta(int idCuenta) async{
    return true;
  }

  @override
  Future<List<Cuenta>> listarCuentas({int limit = 10, offset = 0}) async{
    List<Cuenta> cuentasList = [
      Cuenta('Principal', true, 100.0, id: 1),
      Cuenta('Banco Ganadero', true, 100.0, id: 1),
      Cuenta('Banco BCP', true, 100.0, id: 1)
    ];
    return cuentasList;
  }

  @override
  Future<Cuenta> obtenerCuenta(int idCuenta) async{ 
    return Cuenta('Principal', true, 100.0, id: 1); 
  }
}
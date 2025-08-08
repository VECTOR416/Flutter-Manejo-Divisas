import 'package:isar/isar.dart';
import 'package:manejo_divisas/domain/datasource/cuenta_datasource.dart';
import 'package:manejo_divisas/domain/dtos/cuenta/register_cuenta.dart';
import 'package:manejo_divisas/domain/dtos/cuenta/update_cuenta.dart';
import 'package:manejo_divisas/domain/entities/cuenta.dart';
import 'package:path_provider/path_provider.dart';

class CuentaDatasourceIsar implements CuentaDatasource{

  late Future<Isar> db;

  CuentaDatasourceIsar(){
    db = openDB();
  }

  Future<Isar> openDB() async{

    final dir = await getApplicationDocumentsDirectory();

    if( Isar.instanceNames.isEmpty ){
      return await Isar.open([ CuentaSchema ], directory: dir.path, inspector: true);
    }
    return Future.value(Isar.getInstance());
  }

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
  Future<Cuenta> obtenerCuenta(int idCuenta) {
    // TODO: implement obtenerCuenta
    throw UnimplementedError();
  }

  

}
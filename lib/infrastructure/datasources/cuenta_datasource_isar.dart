import 'package:isar/isar.dart';
import 'package:manejo_divisas/domain/datasource/cuenta_datasource.dart';
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
  Future<Cuenta> actualizarCuenta(int idCuenta, Cuenta cuenta) async{
    final isar = await db;
    // final Cuenta cuentaDB = await isar.writeTxn(() async {
    //   await isar.cuentas.put(cuenta);
    // });
    //return Future.value(isar.cuentas.get(idCuenta));
    throw UnimplementedError();
  }

  @override
  Future<Cuenta> crearCuenta(Cuenta cuenta) {
    // TODO: implement crearCuenta
    throw UnimplementedError();
  }

  @override
  Future<Cuenta> eliminarCuenta(int idCuenta) {
    // TODO: implement eliminarCuenta
    throw UnimplementedError();
  }

  @override
  Future<Cuenta> listarCuentas({int limit = 10, offset = 0}) {
    // TODO: implement listarCuentas
    throw UnimplementedError();
  }

  @override
  Future<Cuenta> obtenerCuenta(int idCuenta) {
    // TODO: implement obtenerCuenta
    throw UnimplementedError();
  }

}
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manejo_divisas/domain/entities/cuenta.dart';
import 'package:manejo_divisas/presentation/providers/cuenta/cuenta_repository_provider.dart';

//* FUNCION PARA OBTENER LA CUENTA DESDE EL REPOSITORIO
final getAcountProvider = StateNotifierProvider<AcountNotifier, Cuenta?>((ref) {
    final fetchAcount = ref.watch(cuentaRepositoryProvider).obtenerCuenta;
    return AcountNotifier(getAcount: fetchAcount);
});


//* FUNCION CALLBACK PARA UNA FUNCION QUE REGRESE UNA CUENTA
typedef AcountCallback = Future<Cuenta> Function(int id);

//* NOTIFICADOR QUE OBSERVA LA CUENTA
class AcountNotifier extends StateNotifier<Cuenta?>{
  AcountCallback getAcount;
  AcountNotifier({required this.getAcount}): super(null);

  Future<void> loadAcount(int accountId) async{
    final Cuenta acount = await getAcount(accountId);
    state = acount;
  }
}
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manejo_divisas/domain/entities/cuenta.dart';
import 'package:manejo_divisas/presentation/providers/cuenta/cuenta_repository_provider.dart';

final getAcountProvider = StateNotifierProvider<AcountNotifier, Cuenta?>((ref) {
    final fetchAcount = ref.watch(cuentaRepositoryProvider).obtenerCuenta;
    return AcountNotifier(getAcount: fetchAcount);
});

typedef AcountCallback = Future<Cuenta> Function(int id);

class AcountNotifier extends StateNotifier<Cuenta?>{
  AcountCallback getAcount;
  AcountNotifier({required this.getAcount}): super(null);

  Future<void> loadAcount(int accountId) async{
    final Cuenta acount = await getAcount(accountId);
    state = acount;
  }
}
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manejo_divisas/infrastructure/datasources/fakeDatasource/cuenta_fake_datasource.dart';
import 'package:manejo_divisas/infrastructure/repositories/cuenta_repository_impl.dart';

final cuentaRepositoryProvider = Provider((ref) {
  return CuentaRepositoryImpl(datasource: CuentaFakeDatasource());
});
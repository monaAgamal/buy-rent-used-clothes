import 'package:buy_rent_used_clothes/core/domain/datasources/auth_local_datasource.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as:AuthLocalDataSource )
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  @override
  getCurrentUser() {
    throw UnimplementedError();
  }

  @override
  persistUser() {
    throw UnimplementedError();
  }

  @override
  revokeCurrentUser() {
    throw UnimplementedError();
  }
}

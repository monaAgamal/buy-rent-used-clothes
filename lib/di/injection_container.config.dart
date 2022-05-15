// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../features/auth/core/data/datasource/auth_local_datasource_impl.dart'
    as _i11;
import '../features/auth/core/data/datasource/auth_remote_datasource_impl.dart'
    as _i13;
import '../features/auth/core/data/repositories/auth_repository_impl.dart'
    as _i15;
import '../features/auth/core/data/service/auth_service.dart' as _i3;
import '../features/auth/core/domain/datasources/auth_local_datasource.dart'
    as _i10;
import '../features/auth/core/domain/datasources/auth_remote_datasource.dart'
    as _i12;
import '../features/auth/core/domain/repositories/auth_repository.dart' as _i14;
import '../features/auth/core/domain/usecases/check_auth_usecase.dart' as _i16;
import '../features/auth/core/presentation/cubit/auth_status_cubit.dart'
    as _i18;
import '../features/auth/forget_password/input_phone/presentation/input_phone_bloc/input_phone_bloc.dart'
    as _i4;
import '../features/auth/forget_password/phone_activation/presentation/bloc/phone_verification_cubit.dart'
    as _i7;
import '../features/auth/forget_password/reset_password/presentation/cubit/reset_password_cubit.dart'
    as _i8;
import '../features/auth/login/domain/usecases/login_usecase.dart' as _i6;
import '../features/auth/login/presentation/cubit/login_cubit.dart' as _i5;
import '../features/auth/sign_up/domain/usecases/sign_up_usecase.dart' as _i17;
import '../features/auth/sign_up/presentation/cubit/sign_up_cubit.dart' as _i19;
import 'app_module.dart' as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.AuthService>(() => _i3.AuthService());
  gh.factory<_i4.InputPhoneCubit>(() => _i4.InputPhoneCubit());
  gh.factory<_i5.LoginCubit>(() => _i5.LoginCubit());
  gh.factory<_i6.LoginUseCase>(() => _i6.LoginUseCase());
  gh.factory<_i7.PhoneVerificationCubit>(() => _i7.PhoneVerificationCubit());
  gh.factory<_i8.ResetPasswordCubit>(() => _i8.ResetPasswordCubit());
  await gh.factoryAsync<_i9.SharedPreferences>(() => appModule.prefs,
      preResolve: true);
  gh.singleton<_i10.AuthLocalDataSource>(
      _i11.AuthLocalDataSourceImpl(get<_i9.SharedPreferences>()));
  gh.singleton<_i12.AuthRemoteDataSource>(
      _i13.AuthRemoteDataSourceImpl(get<_i3.AuthService>()));
  gh.singleton<_i14.AuthRepository>(_i15.AuthRemoteRepositoryImpl(
      get<_i10.AuthLocalDataSource>(), get<_i12.AuthRemoteDataSource>()));
  gh.factory<_i16.CheckAuthStatusUseCase>(
      () => _i16.CheckAuthStatusUseCase(get<_i14.AuthRepository>()));
  gh.factory<_i17.SignUpUsecase>(
      () => _i17.SignUpUsecase(authRepository: get<_i14.AuthRepository>()));
  gh.singleton<_i18.AuthStatusCubit>(
      _i18.AuthStatusCubit(get<_i16.CheckAuthStatusUseCase>()));
  gh.factory<_i19.SignUpCubit>(
      () => _i19.SignUpCubit(get<_i17.SignUpUsecase>()));
  return get;
}

class _$AppModule extends _i20.AppModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/data/datasources/auth_local_datasource_impl.dart' as _i4;
import '../core/data/user_manegment_service.dart' as _i10;
import '../core/domain/datasources/auth_local_datasource.dart' as _i3;
import '../features/forget_password/input_phone/presentation/input_phone_bloc/input_phone_bloc.dart'
    as _i5;
import '../features/forget_password/phone_activation/presentation/bloc/phone_verification_cubit.dart'
    as _i8;
import '../features/forget_password/reset_password/presentation/cubit/reset_password_cubit.dart'
    as _i9;
import '../features/login/domain/usecases/login_usecase.dart' as _i7;
import '../features/login/presentation/cubit/login_cubit.dart' as _i6;
import '../features/sign_up/data/datasource/remote_datasource_impl.dart'
    as _i12;
import '../features/sign_up/data/repositories/sign_up_repository_impl.dart'
    as _i14;
import '../features/sign_up/domain/data/sign_up_remote_datasource.dart' as _i11;
import '../features/sign_up/domain/repositories/sign_up_repository.dart'
    as _i13;
import '../features/sign_up/domain/usecases/sign_up_usecase.dart' as _i15;
import '../features/sign_up/presentation/cubit/sign_up_cubit.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AuthLocalDataSource>(
      () => _i4.AuthLocalDataSourceImpl());
  gh.factory<_i5.InputPhoneCubit>(() => _i5.InputPhoneCubit());
  gh.factory<_i6.LoginCubit>(() => _i6.LoginCubit());
  gh.factory<_i7.LoginUseCase>(() => _i7.LoginUseCase());
  gh.factory<_i8.PhoneVerificationCubit>(() => _i8.PhoneVerificationCubit());
  gh.factory<_i9.ResetPasswordCubit>(() => _i9.ResetPasswordCubit());
  gh.factory<_i10.UserManegmentService>(() => _i10.UserManegmentService());
  gh.singleton<_i11.SignupRemoteDataSource>(
      _i12.SignupRemoteDataSourceImpl(get<_i10.UserManegmentService>()));
  gh.singleton<_i13.SignUpRepository>(_i14.SignUpRepositoryImpl(
      signupRemoteDataSource: get<_i11.SignupRemoteDataSource>()));
  gh.factory<_i15.SignUpUsecase>(
      () => _i15.SignUpUsecase(signUpRepository: get<_i13.SignUpRepository>()));
  gh.factory<_i16.SignUpCubit>(
      () => _i16.SignUpCubit(get<_i15.SignUpUsecase>()));
  return get;
}

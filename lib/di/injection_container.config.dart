// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/forget_password/input_phone/presentation/input_phone_bloc/input_phone_bloc.dart'
    as _i3;
import '../features/forget_password/phone_activation/presentation/bloc/phone_verification_cubit.dart'
    as _i6;
import '../features/forget_password/reset_password/presentation/cubit/reset_password_cubit.dart'
    as _i7;
import '../features/login/domain/usecases/login_usecase.dart' as _i5;
import '../features/login/presentation/cubit/login_cubit.dart' as _i4;
import '../features/sign_up/presentation/cubit/sign_up_cubit.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.InputPhoneCubit>(() => _i3.InputPhoneCubit());
  gh.factory<_i4.LoginCubit>(() => _i4.LoginCubit());
  gh.factory<_i5.LoginUseCase>(() => _i5.LoginUseCase());
  gh.factory<_i6.PhoneVerificationCubit>(() => _i6.PhoneVerificationCubit());
  gh.factory<_i7.ResetPasswordCubit>(() => _i7.ResetPasswordCubit());
  gh.factory<_i8.SignUpCubit>(() => _i8.SignUpCubit());
  return get;
}

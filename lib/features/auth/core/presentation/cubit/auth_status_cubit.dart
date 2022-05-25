import 'package:bloc/bloc.dart';
import 'package:buy_rent_used_clothes/core/domain/usecase.dart';
import 'package:buy_rent_used_clothes/core/enums/auth_status.dart';
import 'package:buy_rent_used_clothes/core/failure/failure.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/usecases/auth_status_changes_usecase.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/usecases/check_auth_usecase.dart';
import 'package:buy_rent_used_clothes/features/auth/core/presentation/cubit/auth_status_state.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthStatusCubit extends Cubit<AuthStatusState> {
  final CheckAuthStatusUseCase authStatusUseCase;
  final AuthStatusChangesUseCase authStatusChanges;

  AuthStatusCubit(this.authStatusUseCase, this.authStatusChanges)
      : super(const AuthStatusState.initial());

  Future checkAuthStatus() async {
    final isLoggedIn = await authStatusUseCase(NoParams());
    switch (isLoggedIn) {
      case AuthStatus.unAuthenticated:
        emit(const AuthStatusState.unAuthenticated());
        break;
      case AuthStatus.verified:
        emit(const AuthStatusState.verified());
        break;
      case AuthStatus.uthenticatedNotVerified:
        emit(const AuthStatusState.authenticatedNotVerified());
        break;
    }
  }

  void checkAuthStatusChanges() async {
    final Either<Failure, Stream<User?>> result =
        await authStatusChanges(NoParams());

    result.fold(
      (l) => emit(const AuthStatusState.unAuthenticated()),
      (user) => emit(const AuthStatusState.authenticated()),
    );
  }
}

import 'package:equatable/equatable.dart';

class LoggedInUserEntity extends Equatable {
  final bool isVerified;
  final bool isAuthenticated;

  const LoggedInUserEntity(
      {required this.isVerified, required this.isAuthenticated});

  @override
  List<Object?> get props => [isVerified, isAuthenticated];
}

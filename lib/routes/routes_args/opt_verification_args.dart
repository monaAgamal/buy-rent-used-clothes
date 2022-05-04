import 'package:equatable/equatable.dart';

class OtpVerificationArgs extends Equatable {
  final String phone;

  const OtpVerificationArgs({required this.phone});

  @override
  List<Object?> get props => [phone];
}

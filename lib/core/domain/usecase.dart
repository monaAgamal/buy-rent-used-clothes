import 'package:equatable/equatable.dart';

abstract class UseCase<returnType, param> {
  returnType call(param);
}

class NoParams {}

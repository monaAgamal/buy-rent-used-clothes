// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled, DateTime dateTime)
        enableLoginButton,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(enableLoginButton value) enableLoginButton,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled, DateTime dateTime)
        enableLoginButton,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(enableLoginButton value) enableLoginButton,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $enableLoginButtonCopyWith<$Res> {
  factory $enableLoginButtonCopyWith(
          enableLoginButton value, $Res Function(enableLoginButton) then) =
      _$enableLoginButtonCopyWithImpl<$Res>;
  $Res call({bool isEnabled, DateTime dateTime});
}

/// @nodoc
class _$enableLoginButtonCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $enableLoginButtonCopyWith<$Res> {
  _$enableLoginButtonCopyWithImpl(
      enableLoginButton _value, $Res Function(enableLoginButton) _then)
      : super(_value, (v) => _then(v as enableLoginButton));

  @override
  enableLoginButton get _value => super._value as enableLoginButton;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(enableLoginButton(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$enableLoginButton implements enableLoginButton {
  const _$enableLoginButton({required this.isEnabled, required this.dateTime});

  @override
  final bool isEnabled;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'LoginState.enableLoginButton(isEnabled: $isEnabled, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is enableLoginButton &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isEnabled),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  $enableLoginButtonCopyWith<enableLoginButton> get copyWith =>
      _$enableLoginButtonCopyWithImpl<enableLoginButton>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled, DateTime dateTime)
        enableLoginButton,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
  }) {
    return enableLoginButton(isEnabled, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
  }) {
    return enableLoginButton?.call(isEnabled, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (enableLoginButton != null) {
      return enableLoginButton(isEnabled, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(enableLoginButton value) enableLoginButton,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return enableLoginButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return enableLoginButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (enableLoginButton != null) {
      return enableLoginButton(this);
    }
    return orElse();
  }
}

abstract class enableLoginButton implements LoginState {
  const factory enableLoginButton(
      {required final bool isEnabled,
      required final DateTime dateTime}) = _$enableLoginButton;

  bool get isEnabled => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $enableLoginButtonCopyWith<enableLoginButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled, DateTime dateTime)
        enableLoginButton,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(enableLoginButton value) enableLoginButton,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled, DateTime dateTime)
        enableLoginButton,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(enableLoginButton value) enableLoginButton,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements LoginState {
  const factory Error({required final String message}) = _$Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'LoginState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled, DateTime dateTime)
        enableLoginButton,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled, DateTime dateTime)? enableLoginButton,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(enableLoginButton value) enableLoginButton,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(enableLoginButton value)? enableLoginButton,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements LoginState {
  const factory Authenticated() = _$Authenticated;
}

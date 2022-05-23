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
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
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
        (other.runtimeType == runtimeType && other is _$Initial);
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
abstract class _$$enableLoginButtonCopyWith<$Res> {
  factory _$$enableLoginButtonCopyWith(
          _$enableLoginButton value, $Res Function(_$enableLoginButton) then) =
      __$$enableLoginButtonCopyWithImpl<$Res>;
  $Res call({bool isEnabled, DateTime dateTime});
}

/// @nodoc
class __$$enableLoginButtonCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$enableLoginButtonCopyWith<$Res> {
  __$$enableLoginButtonCopyWithImpl(
      _$enableLoginButton _value, $Res Function(_$enableLoginButton) _then)
      : super(_value, (v) => _then(v as _$enableLoginButton));

  @override
  _$enableLoginButton get _value => super._value as _$enableLoginButton;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$enableLoginButton(
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
            other is _$enableLoginButton &&
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
  _$$enableLoginButtonCopyWith<_$enableLoginButton> get copyWith =>
      __$$enableLoginButtonCopyWithImpl<_$enableLoginButton>(this, _$identity);

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
  _$$enableLoginButtonCopyWith<_$enableLoginButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
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
        (other.runtimeType == runtimeType && other is _$Loading);
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
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error(
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
            other is _$Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

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
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, (v) => _then(v as _$Authenticated));

  @override
  _$Authenticated get _value => super._value as _$Authenticated;
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
        (other.runtimeType == runtimeType && other is _$Authenticated);
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

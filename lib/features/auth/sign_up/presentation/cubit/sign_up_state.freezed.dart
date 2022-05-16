// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled) enableSignUpBtn,
    required TResult Function() loading,
    required TResult Function() signedUpSuccessfully,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(EnableSignUpBtn value) enableSignUpBtn,
    required TResult Function(Loading value) loading,
    required TResult Function(SignedUpSuccessfully value) signedUpSuccessfully,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.initial()';
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
    required TResult Function(bool isEnabled) enableSignUpBtn,
    required TResult Function() loading,
    required TResult Function() signedUpSuccessfully,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
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
    required TResult Function(EnableSignUpBtn value) enableSignUpBtn,
    required TResult Function(Loading value) loading,
    required TResult Function(SignedUpSuccessfully value) signedUpSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SignUpState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $EnableSignUpBtnCopyWith<$Res> {
  factory $EnableSignUpBtnCopyWith(
          EnableSignUpBtn value, $Res Function(EnableSignUpBtn) then) =
      _$EnableSignUpBtnCopyWithImpl<$Res>;
  $Res call({bool isEnabled});
}

/// @nodoc
class _$EnableSignUpBtnCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $EnableSignUpBtnCopyWith<$Res> {
  _$EnableSignUpBtnCopyWithImpl(
      EnableSignUpBtn _value, $Res Function(EnableSignUpBtn) _then)
      : super(_value, (v) => _then(v as EnableSignUpBtn));

  @override
  EnableSignUpBtn get _value => super._value as EnableSignUpBtn;

  @override
  $Res call({
    Object? isEnabled = freezed,
  }) {
    return _then(EnableSignUpBtn(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EnableSignUpBtn implements EnableSignUpBtn {
  const _$EnableSignUpBtn({required this.isEnabled});

  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'SignUpState.enableSignUpBtn(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnableSignUpBtn &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isEnabled));

  @JsonKey(ignore: true)
  @override
  $EnableSignUpBtnCopyWith<EnableSignUpBtn> get copyWith =>
      _$EnableSignUpBtnCopyWithImpl<EnableSignUpBtn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled) enableSignUpBtn,
    required TResult Function() loading,
    required TResult Function() signedUpSuccessfully,
    required TResult Function(String message) error,
  }) {
    return enableSignUpBtn(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
  }) {
    return enableSignUpBtn?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (enableSignUpBtn != null) {
      return enableSignUpBtn(isEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(EnableSignUpBtn value) enableSignUpBtn,
    required TResult Function(Loading value) loading,
    required TResult Function(SignedUpSuccessfully value) signedUpSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return enableSignUpBtn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return enableSignUpBtn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (enableSignUpBtn != null) {
      return enableSignUpBtn(this);
    }
    return orElse();
  }
}

abstract class EnableSignUpBtn implements SignUpState {
  const factory EnableSignUpBtn({required final bool isEnabled}) =
      _$EnableSignUpBtn;

  bool get isEnabled => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnableSignUpBtnCopyWith<EnableSignUpBtn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.loading()';
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
    required TResult Function(bool isEnabled) enableSignUpBtn,
    required TResult Function() loading,
    required TResult Function() signedUpSuccessfully,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
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
    required TResult Function(EnableSignUpBtn value) enableSignUpBtn,
    required TResult Function(Loading value) loading,
    required TResult Function(SignedUpSuccessfully value) signedUpSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SignUpState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SignedUpSuccessfullyCopyWith<$Res> {
  factory $SignedUpSuccessfullyCopyWith(SignedUpSuccessfully value,
          $Res Function(SignedUpSuccessfully) then) =
      _$SignedUpSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedUpSuccessfullyCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignedUpSuccessfullyCopyWith<$Res> {
  _$SignedUpSuccessfullyCopyWithImpl(
      SignedUpSuccessfully _value, $Res Function(SignedUpSuccessfully) _then)
      : super(_value, (v) => _then(v as SignedUpSuccessfully));

  @override
  SignedUpSuccessfully get _value => super._value as SignedUpSuccessfully;
}

/// @nodoc

class _$SignedUpSuccessfully implements SignedUpSuccessfully {
  const _$SignedUpSuccessfully();

  @override
  String toString() {
    return 'SignUpState.signedUpSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignedUpSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled) enableSignUpBtn,
    required TResult Function() loading,
    required TResult Function() signedUpSuccessfully,
    required TResult Function(String message) error,
  }) {
    return signedUpSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
  }) {
    return signedUpSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (signedUpSuccessfully != null) {
      return signedUpSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(EnableSignUpBtn value) enableSignUpBtn,
    required TResult Function(Loading value) loading,
    required TResult Function(SignedUpSuccessfully value) signedUpSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return signedUpSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return signedUpSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (signedUpSuccessfully != null) {
      return signedUpSuccessfully(this);
    }
    return orElse();
  }
}

abstract class SignedUpSuccessfully implements SignUpState {
  const factory SignedUpSuccessfully() = _$SignedUpSuccessfully;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.error(message: $message)';
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
    required TResult Function(bool isEnabled) enableSignUpBtn,
    required TResult Function() loading,
    required TResult Function() signedUpSuccessfully,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? enableSignUpBtn,
    TResult Function()? loading,
    TResult Function()? signedUpSuccessfully,
    TResult Function(String message)? error,
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
    required TResult Function(EnableSignUpBtn value) enableSignUpBtn,
    required TResult Function(Loading value) loading,
    required TResult Function(SignedUpSuccessfully value) signedUpSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(EnableSignUpBtn value)? enableSignUpBtn,
    TResult Function(Loading value)? loading,
    TResult Function(SignedUpSuccessfully value)? signedUpSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SignUpState {
  const factory Error({required final String message}) = _$Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

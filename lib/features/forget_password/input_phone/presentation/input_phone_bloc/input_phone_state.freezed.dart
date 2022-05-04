// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_phone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputPhoneState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneSentSuccessfully,
    required TResult Function(bool isEnabled) enableSendPhoneButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PhoneSentSuccessfully value)
        phoneSentSuccessfully,
    required TResult Function(EnableSendPhoneButton value)
        enableSendPhoneButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputPhoneStateCopyWith<$Res> {
  factory $InputPhoneStateCopyWith(
          InputPhoneState value, $Res Function(InputPhoneState) then) =
      _$InputPhoneStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InputPhoneStateCopyWithImpl<$Res>
    implements $InputPhoneStateCopyWith<$Res> {
  _$InputPhoneStateCopyWithImpl(this._value, this._then);

  final InputPhoneState _value;
  // ignore: unused_field
  final $Res Function(InputPhoneState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$InputPhoneStateCopyWithImpl<$Res>
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
    return 'InputPhoneState.initial()';
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
    required TResult Function() loading,
    required TResult Function() phoneSentSuccessfully,
    required TResult Function(bool isEnabled) enableSendPhoneButton,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
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
    required TResult Function(Loading value) loading,
    required TResult Function(PhoneSentSuccessfully value)
        phoneSentSuccessfully,
    required TResult Function(EnableSendPhoneButton value)
        enableSendPhoneButton,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements InputPhoneState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$InputPhoneStateCopyWithImpl<$Res>
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
    return 'InputPhoneState.loading()';
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
    required TResult Function() loading,
    required TResult Function() phoneSentSuccessfully,
    required TResult Function(bool isEnabled) enableSendPhoneButton,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
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
    required TResult Function(Loading value) loading,
    required TResult Function(PhoneSentSuccessfully value)
        phoneSentSuccessfully,
    required TResult Function(EnableSendPhoneButton value)
        enableSendPhoneButton,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements InputPhoneState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $PhoneSentSuccessfullyCopyWith<$Res> {
  factory $PhoneSentSuccessfullyCopyWith(PhoneSentSuccessfully value,
          $Res Function(PhoneSentSuccessfully) then) =
      _$PhoneSentSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneSentSuccessfullyCopyWithImpl<$Res>
    extends _$InputPhoneStateCopyWithImpl<$Res>
    implements $PhoneSentSuccessfullyCopyWith<$Res> {
  _$PhoneSentSuccessfullyCopyWithImpl(
      PhoneSentSuccessfully _value, $Res Function(PhoneSentSuccessfully) _then)
      : super(_value, (v) => _then(v as PhoneSentSuccessfully));

  @override
  PhoneSentSuccessfully get _value => super._value as PhoneSentSuccessfully;
}

/// @nodoc

class _$PhoneSentSuccessfully implements PhoneSentSuccessfully {
  const _$PhoneSentSuccessfully();

  @override
  String toString() {
    return 'InputPhoneState.phoneSentSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PhoneSentSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneSentSuccessfully,
    required TResult Function(bool isEnabled) enableSendPhoneButton,
  }) {
    return phoneSentSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
  }) {
    return phoneSentSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
    required TResult orElse(),
  }) {
    if (phoneSentSuccessfully != null) {
      return phoneSentSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PhoneSentSuccessfully value)
        phoneSentSuccessfully,
    required TResult Function(EnableSendPhoneButton value)
        enableSendPhoneButton,
  }) {
    return phoneSentSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
  }) {
    return phoneSentSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
    required TResult orElse(),
  }) {
    if (phoneSentSuccessfully != null) {
      return phoneSentSuccessfully(this);
    }
    return orElse();
  }
}

abstract class PhoneSentSuccessfully implements InputPhoneState {
  const factory PhoneSentSuccessfully() = _$PhoneSentSuccessfully;
}

/// @nodoc
abstract class $EnableSendPhoneButtonCopyWith<$Res> {
  factory $EnableSendPhoneButtonCopyWith(EnableSendPhoneButton value,
          $Res Function(EnableSendPhoneButton) then) =
      _$EnableSendPhoneButtonCopyWithImpl<$Res>;
  $Res call({bool isEnabled});
}

/// @nodoc
class _$EnableSendPhoneButtonCopyWithImpl<$Res>
    extends _$InputPhoneStateCopyWithImpl<$Res>
    implements $EnableSendPhoneButtonCopyWith<$Res> {
  _$EnableSendPhoneButtonCopyWithImpl(
      EnableSendPhoneButton _value, $Res Function(EnableSendPhoneButton) _then)
      : super(_value, (v) => _then(v as EnableSendPhoneButton));

  @override
  EnableSendPhoneButton get _value => super._value as EnableSendPhoneButton;

  @override
  $Res call({
    Object? isEnabled = freezed,
  }) {
    return _then(EnableSendPhoneButton(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EnableSendPhoneButton implements EnableSendPhoneButton {
  const _$EnableSendPhoneButton({required this.isEnabled});

  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'InputPhoneState.enableSendPhoneButton(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnableSendPhoneButton &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isEnabled));

  @JsonKey(ignore: true)
  @override
  $EnableSendPhoneButtonCopyWith<EnableSendPhoneButton> get copyWith =>
      _$EnableSendPhoneButtonCopyWithImpl<EnableSendPhoneButton>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneSentSuccessfully,
    required TResult Function(bool isEnabled) enableSendPhoneButton,
  }) {
    return enableSendPhoneButton(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
  }) {
    return enableSendPhoneButton?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneSentSuccessfully,
    TResult Function(bool isEnabled)? enableSendPhoneButton,
    required TResult orElse(),
  }) {
    if (enableSendPhoneButton != null) {
      return enableSendPhoneButton(isEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PhoneSentSuccessfully value)
        phoneSentSuccessfully,
    required TResult Function(EnableSendPhoneButton value)
        enableSendPhoneButton,
  }) {
    return enableSendPhoneButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
  }) {
    return enableSendPhoneButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PhoneSentSuccessfully value)? phoneSentSuccessfully,
    TResult Function(EnableSendPhoneButton value)? enableSendPhoneButton,
    required TResult orElse(),
  }) {
    if (enableSendPhoneButton != null) {
      return enableSendPhoneButton(this);
    }
    return orElse();
  }
}

abstract class EnableSendPhoneButton implements InputPhoneState {
  const factory EnableSendPhoneButton({required final bool isEnabled}) =
      _$EnableSendPhoneButton;

  bool get isEnabled => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnableSendPhoneButtonCopyWith<EnableSendPhoneButton> get copyWith =>
      throw _privateConstructorUsedError;
}

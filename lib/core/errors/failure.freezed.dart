// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainFailureTearOff {
  const _$MainFailureTearOff();

  _ClientFailure clientFailure({required String message}) {
    return _ClientFailure(
      message: message,
    );
  }

  _ServerFailure serverFailure({required String message}) {
    return _ServerFailure(
      message: message,
    );
  }

  _DuplicationFailure duplicationFailure({required String message}) {
    return _DuplicationFailure(
      message: message,
    );
  }
}

/// @nodoc
const $MainFailure = _$MainFailureTearOff();

/// @nodoc
mixin _$MainFailure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) clientFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) duplicationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? duplicationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? duplicationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_DuplicationFailure value) duplicationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicationFailure value)? duplicationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicationFailure value)? duplicationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainFailureCopyWith<MainFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res> implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  final MainFailure _value;
  // ignore: unused_field
  final $Res Function(MainFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ClientFailureCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$ClientFailureCopyWith(
          _ClientFailure value, $Res Function(_ClientFailure) then) =
      __$ClientFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ClientFailureCopyWithImpl<$Res> extends _$MainFailureCopyWithImpl<$Res>
    implements _$ClientFailureCopyWith<$Res> {
  __$ClientFailureCopyWithImpl(
      _ClientFailure _value, $Res Function(_ClientFailure) _then)
      : super(_value, (v) => _then(v as _ClientFailure));

  @override
  _ClientFailure get _value => super._value as _ClientFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ClientFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClientFailure implements _ClientFailure {
  const _$_ClientFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MainFailure.clientFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ClientFailureCopyWith<_ClientFailure> get copyWith =>
      __$ClientFailureCopyWithImpl<_ClientFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) clientFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) duplicationFailure,
  }) {
    return clientFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? duplicationFailure,
  }) {
    return clientFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? duplicationFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_DuplicationFailure value) duplicationFailure,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicationFailure value)? duplicationFailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicationFailure value)? duplicationFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements MainFailure {
  const factory _ClientFailure({required String message}) = _$_ClientFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ClientFailureCopyWith<_ClientFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res> extends _$MainFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ServerFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MainFailure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) clientFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) duplicationFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? duplicationFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? duplicationFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_DuplicationFailure value) duplicationFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicationFailure value)? duplicationFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicationFailure value)? duplicationFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements MainFailure {
  const factory _ServerFailure({required String message}) = _$_ServerFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DuplicationFailureCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$DuplicationFailureCopyWith(
          _DuplicationFailure value, $Res Function(_DuplicationFailure) then) =
      __$DuplicationFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$DuplicationFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res>
    implements _$DuplicationFailureCopyWith<$Res> {
  __$DuplicationFailureCopyWithImpl(
      _DuplicationFailure _value, $Res Function(_DuplicationFailure) _then)
      : super(_value, (v) => _then(v as _DuplicationFailure));

  @override
  _DuplicationFailure get _value => super._value as _DuplicationFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_DuplicationFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DuplicationFailure implements _DuplicationFailure {
  const _$_DuplicationFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MainFailure.duplicationFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DuplicationFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$DuplicationFailureCopyWith<_DuplicationFailure> get copyWith =>
      __$DuplicationFailureCopyWithImpl<_DuplicationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) clientFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) duplicationFailure,
  }) {
    return duplicationFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? duplicationFailure,
  }) {
    return duplicationFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? duplicationFailure,
    required TResult orElse(),
  }) {
    if (duplicationFailure != null) {
      return duplicationFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_DuplicationFailure value) duplicationFailure,
  }) {
    return duplicationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicationFailure value)? duplicationFailure,
  }) {
    return duplicationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicationFailure value)? duplicationFailure,
    required TResult orElse(),
  }) {
    if (duplicationFailure != null) {
      return duplicationFailure(this);
    }
    return orElse();
  }
}

abstract class _DuplicationFailure implements MainFailure {
  const factory _DuplicationFailure({required String message}) =
      _$_DuplicationFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$DuplicationFailureCopyWith<_DuplicationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

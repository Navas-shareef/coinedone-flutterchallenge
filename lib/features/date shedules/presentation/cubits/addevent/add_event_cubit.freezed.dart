// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_event_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddEventStateTearOff {
  const _$AddEventStateTearOff();

  _loading loading() {
    return const _loading();
  }

  _success success(Event event) {
    return _success(
      event,
    );
  }

  _failed failed(MainFailure failure) {
    return _failed(
      failure,
    );
  }
}

/// @nodoc
const $AddEventState = _$AddEventStateTearOff();

/// @nodoc
mixin _$AddEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) success,
    required TResult Function(MainFailure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? success,
    TResult Function(MainFailure failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? success,
    TResult Function(MainFailure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEventStateCopyWith<$Res> {
  factory $AddEventStateCopyWith(
          AddEventState value, $Res Function(AddEventState) then) =
      _$AddEventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddEventStateCopyWithImpl<$Res>
    implements $AddEventStateCopyWith<$Res> {
  _$AddEventStateCopyWithImpl(this._value, this._then);

  final AddEventState _value;
  // ignore: unused_field
  final $Res Function(AddEventState) _then;
}

/// @nodoc
abstract class _$loadingCopyWith<$Res> {
  factory _$loadingCopyWith(_loading value, $Res Function(_loading) then) =
      __$loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadingCopyWithImpl<$Res> extends _$AddEventStateCopyWithImpl<$Res>
    implements _$loadingCopyWith<$Res> {
  __$loadingCopyWithImpl(_loading _value, $Res Function(_loading) _then)
      : super(_value, (v) => _then(v as _loading));

  @override
  _loading get _value => super._value as _loading;
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'AddEventState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) success,
    required TResult Function(MainFailure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? success,
    TResult Function(MainFailure failure)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? success,
    TResult Function(MainFailure failure)? failed,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements AddEventState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$successCopyWith<$Res> {
  factory _$successCopyWith(_success value, $Res Function(_success) then) =
      __$successCopyWithImpl<$Res>;
  $Res call({Event event});
}

/// @nodoc
class __$successCopyWithImpl<$Res> extends _$AddEventStateCopyWithImpl<$Res>
    implements _$successCopyWith<$Res> {
  __$successCopyWithImpl(_success _value, $Res Function(_success) _then)
      : super(_value, (v) => _then(v as _success));

  @override
  _success get _value => super._value as _success;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_success(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$_success implements _success {
  const _$_success(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'AddEventState.success(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _success &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$successCopyWith<_success> get copyWith =>
      __$successCopyWithImpl<_success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) success,
    required TResult Function(MainFailure failure) failed,
  }) {
    return success(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? success,
    TResult Function(MainFailure failure)? failed,
  }) {
    return success?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? success,
    TResult Function(MainFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements AddEventState {
  const factory _success(Event event) = _$_success;

  Event get event;
  @JsonKey(ignore: true)
  _$successCopyWith<_success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$failedCopyWith<$Res> {
  factory _$failedCopyWith(_failed value, $Res Function(_failed) then) =
      __$failedCopyWithImpl<$Res>;
  $Res call({MainFailure failure});

  $MainFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$failedCopyWithImpl<$Res> extends _$AddEventStateCopyWithImpl<$Res>
    implements _$failedCopyWith<$Res> {
  __$failedCopyWithImpl(_failed _value, $Res Function(_failed) _then)
      : super(_value, (v) => _then(v as _failed));

  @override
  _failed get _value => super._value as _failed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_failed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure,
    ));
  }

  @override
  $MainFailureCopyWith<$Res> get failure {
    return $MainFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_failed implements _failed {
  const _$_failed(this.failure);

  @override
  final MainFailure failure;

  @override
  String toString() {
    return 'AddEventState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _failed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$failedCopyWith<_failed> get copyWith =>
      __$failedCopyWithImpl<_failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) success,
    required TResult Function(MainFailure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? success,
    TResult Function(MainFailure failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? success,
    TResult Function(MainFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _failed implements AddEventState {
  const factory _failed(MainFailure failure) = _$_failed;

  MainFailure get failure;
  @JsonKey(ignore: true)
  _$failedCopyWith<_failed> get copyWith => throw _privateConstructorUsedError;
}

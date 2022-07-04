// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_event_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetEventStateTearOff {
  const _$GetEventStateTearOff();

  _loading loading() {
    return const _loading();
  }

  _success success(List<Event> res) {
    return _success(
      res,
    );
  }

  _failure failure(MainFailure failure) {
    return _failure(
      failure,
    );
  }
}

/// @nodoc
const $GetEventState = _$GetEventStateTearOff();

/// @nodoc
mixin _$GetEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> res) success,
    required TResult Function(MainFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> res)? success,
    TResult Function(MainFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> res)? success,
    TResult Function(MainFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventStateCopyWith<$Res> {
  factory $GetEventStateCopyWith(
          GetEventState value, $Res Function(GetEventState) then) =
      _$GetEventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetEventStateCopyWithImpl<$Res>
    implements $GetEventStateCopyWith<$Res> {
  _$GetEventStateCopyWithImpl(this._value, this._then);

  final GetEventState _value;
  // ignore: unused_field
  final $Res Function(GetEventState) _then;
}

/// @nodoc
abstract class _$loadingCopyWith<$Res> {
  factory _$loadingCopyWith(_loading value, $Res Function(_loading) then) =
      __$loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadingCopyWithImpl<$Res> extends _$GetEventStateCopyWithImpl<$Res>
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
    return 'GetEventState.loading()';
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
    required TResult Function(List<Event> res) success,
    required TResult Function(MainFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> res)? success,
    TResult Function(MainFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> res)? success,
    TResult Function(MainFailure failure)? failure,
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
    required TResult Function(_failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements GetEventState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$successCopyWith<$Res> {
  factory _$successCopyWith(_success value, $Res Function(_success) then) =
      __$successCopyWithImpl<$Res>;
  $Res call({List<Event> res});
}

/// @nodoc
class __$successCopyWithImpl<$Res> extends _$GetEventStateCopyWithImpl<$Res>
    implements _$successCopyWith<$Res> {
  __$successCopyWithImpl(_success _value, $Res Function(_success) _then)
      : super(_value, (v) => _then(v as _success));

  @override
  _success get _value => super._value as _success;

  @override
  $Res call({
    Object? res = freezed,
  }) {
    return _then(_success(
      res == freezed
          ? _value.res
          : res // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$_success implements _success {
  const _$_success(this.res);

  @override
  final List<Event> res;

  @override
  String toString() {
    return 'GetEventState.success(res: $res)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _success &&
            const DeepCollectionEquality().equals(other.res, res));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(res));

  @JsonKey(ignore: true)
  @override
  _$successCopyWith<_success> get copyWith =>
      __$successCopyWithImpl<_success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> res) success,
    required TResult Function(MainFailure failure) failure,
  }) {
    return success(res);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> res)? success,
    TResult Function(MainFailure failure)? failure,
  }) {
    return success?.call(res);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> res)? success,
    TResult Function(MainFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(res);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements GetEventState {
  const factory _success(List<Event> res) = _$_success;

  List<Event> get res;
  @JsonKey(ignore: true)
  _$successCopyWith<_success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$failureCopyWith<$Res> {
  factory _$failureCopyWith(_failure value, $Res Function(_failure) then) =
      __$failureCopyWithImpl<$Res>;
  $Res call({MainFailure failure});

  $MainFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$failureCopyWithImpl<$Res> extends _$GetEventStateCopyWithImpl<$Res>
    implements _$failureCopyWith<$Res> {
  __$failureCopyWithImpl(_failure _value, $Res Function(_failure) _then)
      : super(_value, (v) => _then(v as _failure));

  @override
  _failure get _value => super._value as _failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_failure(
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

class _$_failure implements _failure {
  const _$_failure(this.failure);

  @override
  final MainFailure failure;

  @override
  String toString() {
    return 'GetEventState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _failure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$failureCopyWith<_failure> get copyWith =>
      __$failureCopyWithImpl<_failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> res) success,
    required TResult Function(MainFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> res)? success,
    TResult Function(MainFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> res)? success,
    TResult Function(MainFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _failure implements GetEventState {
  const factory _failure(MainFailure failure) = _$_failure;

  MainFailure get failure;
  @JsonKey(ignore: true)
  _$failureCopyWith<_failure> get copyWith =>
      throw _privateConstructorUsedError;
}

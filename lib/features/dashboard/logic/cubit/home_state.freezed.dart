// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) succuss,
    required TResult Function(String message) error,
    required TResult Function(T data) safetyCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? succuss,
    TResult? Function(String message)? error,
    TResult? Function(T data)? safetyCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? succuss,
    TResult Function(String message)? error,
    TResult Function(T data)? safetyCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Succuss<T> value) succuss,
    required TResult Function(Error<T> value) error,
    required TResult Function(SafetyCheck<T> value) safetyCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Succuss<T> value)? succuss,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SafetyCheck<T> value)? safetyCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Succuss<T> value)? succuss,
    TResult Function(Error<T> value)? error,
    TResult Function(SafetyCheck<T> value)? safetyCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) succuss,
    required TResult Function(String message) error,
    required TResult Function(T data) safetyCheck,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? succuss,
    TResult? Function(String message)? error,
    TResult? Function(T data)? safetyCheck,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? succuss,
    TResult Function(String message)? error,
    TResult Function(T data)? safetyCheck,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Succuss<T> value) succuss,
    required TResult Function(Error<T> value) error,
    required TResult Function(SafetyCheck<T> value) safetyCheck,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Succuss<T> value)? succuss,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SafetyCheck<T> value)? safetyCheck,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Succuss<T> value)? succuss,
    TResult Function(Error<T> value)? error,
    TResult Function(SafetyCheck<T> value)? safetyCheck,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) succuss,
    required TResult Function(String message) error,
    required TResult Function(T data) safetyCheck,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? succuss,
    TResult? Function(String message)? error,
    TResult? Function(T data)? safetyCheck,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? succuss,
    TResult Function(String message)? error,
    TResult Function(T data)? safetyCheck,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Succuss<T> value) succuss,
    required TResult Function(Error<T> value) error,
    required TResult Function(SafetyCheck<T> value) safetyCheck,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Succuss<T> value)? succuss,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SafetyCheck<T> value)? safetyCheck,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Succuss<T> value)? succuss,
    TResult Function(Error<T> value)? error,
    TResult Function(SafetyCheck<T> value)? safetyCheck,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements HomeState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$SuccussImplCopyWith<T, $Res> {
  factory _$$SuccussImplCopyWith(
          _$SuccussImpl<T> value, $Res Function(_$SuccussImpl<T>) then) =
      __$$SuccussImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccussImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SuccussImpl<T>>
    implements _$$SuccussImplCopyWith<T, $Res> {
  __$$SuccussImplCopyWithImpl(
      _$SuccussImpl<T> _value, $Res Function(_$SuccussImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccussImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccussImpl<T> implements Succuss<T> {
  const _$SuccussImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'HomeState<$T>.succuss(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccussImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccussImplCopyWith<T, _$SuccussImpl<T>> get copyWith =>
      __$$SuccussImplCopyWithImpl<T, _$SuccussImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) succuss,
    required TResult Function(String message) error,
    required TResult Function(T data) safetyCheck,
  }) {
    return succuss(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? succuss,
    TResult? Function(String message)? error,
    TResult? Function(T data)? safetyCheck,
  }) {
    return succuss?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? succuss,
    TResult Function(String message)? error,
    TResult Function(T data)? safetyCheck,
    required TResult orElse(),
  }) {
    if (succuss != null) {
      return succuss(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Succuss<T> value) succuss,
    required TResult Function(Error<T> value) error,
    required TResult Function(SafetyCheck<T> value) safetyCheck,
  }) {
    return succuss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Succuss<T> value)? succuss,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SafetyCheck<T> value)? safetyCheck,
  }) {
    return succuss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Succuss<T> value)? succuss,
    TResult Function(Error<T> value)? error,
    TResult Function(SafetyCheck<T> value)? safetyCheck,
    required TResult orElse(),
  }) {
    if (succuss != null) {
      return succuss(this);
    }
    return orElse();
  }
}

abstract class Succuss<T> implements HomeState<T> {
  const factory Succuss(final T data) = _$SuccussImpl<T>;

  T get data;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccussImplCopyWith<T, _$SuccussImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) succuss,
    required TResult Function(String message) error,
    required TResult Function(T data) safetyCheck,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? succuss,
    TResult? Function(String message)? error,
    TResult? Function(T data)? safetyCheck,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? succuss,
    TResult Function(String message)? error,
    TResult Function(T data)? safetyCheck,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Succuss<T> value) succuss,
    required TResult Function(Error<T> value) error,
    required TResult Function(SafetyCheck<T> value) safetyCheck,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Succuss<T> value)? succuss,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SafetyCheck<T> value)? safetyCheck,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Succuss<T> value)? succuss,
    TResult Function(Error<T> value)? error,
    TResult Function(SafetyCheck<T> value)? safetyCheck,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements HomeState<T> {
  const factory Error({required final String message}) = _$ErrorImpl<T>;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SafetyCheckImplCopyWith<T, $Res> {
  factory _$$SafetyCheckImplCopyWith(_$SafetyCheckImpl<T> value,
          $Res Function(_$SafetyCheckImpl<T>) then) =
      __$$SafetyCheckImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SafetyCheckImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SafetyCheckImpl<T>>
    implements _$$SafetyCheckImplCopyWith<T, $Res> {
  __$$SafetyCheckImplCopyWithImpl(
      _$SafetyCheckImpl<T> _value, $Res Function(_$SafetyCheckImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SafetyCheckImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SafetyCheckImpl<T> implements SafetyCheck<T> {
  const _$SafetyCheckImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'HomeState<$T>.safetyCheck(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafetyCheckImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SafetyCheckImplCopyWith<T, _$SafetyCheckImpl<T>> get copyWith =>
      __$$SafetyCheckImplCopyWithImpl<T, _$SafetyCheckImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) succuss,
    required TResult Function(String message) error,
    required TResult Function(T data) safetyCheck,
  }) {
    return safetyCheck(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? succuss,
    TResult? Function(String message)? error,
    TResult? Function(T data)? safetyCheck,
  }) {
    return safetyCheck?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? succuss,
    TResult Function(String message)? error,
    TResult Function(T data)? safetyCheck,
    required TResult orElse(),
  }) {
    if (safetyCheck != null) {
      return safetyCheck(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Succuss<T> value) succuss,
    required TResult Function(Error<T> value) error,
    required TResult Function(SafetyCheck<T> value) safetyCheck,
  }) {
    return safetyCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Succuss<T> value)? succuss,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SafetyCheck<T> value)? safetyCheck,
  }) {
    return safetyCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Succuss<T> value)? succuss,
    TResult Function(Error<T> value)? error,
    TResult Function(SafetyCheck<T> value)? safetyCheck,
    required TResult orElse(),
  }) {
    if (safetyCheck != null) {
      return safetyCheck(this);
    }
    return orElse();
  }
}

abstract class SafetyCheck<T> implements HomeState<T> {
  const factory SafetyCheck(final T data) = _$SafetyCheckImpl<T>;

  T get data;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SafetyCheckImplCopyWith<T, _$SafetyCheckImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

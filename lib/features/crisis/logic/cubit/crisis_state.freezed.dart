// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crisis_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CrisisState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(GeneratedCrisisResponse crisis) generated,
    required TResult Function(T crisis) resolved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(GeneratedCrisisResponse crisis)? generated,
    TResult? Function(T crisis)? resolved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(GeneratedCrisisResponse crisis)? generated,
    TResult Function(T crisis)? resolved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(CrisisSuccess<T> value) success,
    required TResult Function(CrisisError<T> value) error,
    required TResult Function(CrisisAdded<T> value) generated,
    required TResult Function(CrisisResolved<T> value) resolved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(CrisisSuccess<T> value)? success,
    TResult? Function(CrisisError<T> value)? error,
    TResult? Function(CrisisAdded<T> value)? generated,
    TResult? Function(CrisisResolved<T> value)? resolved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(CrisisSuccess<T> value)? success,
    TResult Function(CrisisError<T> value)? error,
    TResult Function(CrisisAdded<T> value)? generated,
    TResult Function(CrisisResolved<T> value)? resolved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrisisStateCopyWith<T, $Res> {
  factory $CrisisStateCopyWith(
          CrisisState<T> value, $Res Function(CrisisState<T>) then) =
      _$CrisisStateCopyWithImpl<T, $Res, CrisisState<T>>;
}

/// @nodoc
class _$CrisisStateCopyWithImpl<T, $Res, $Val extends CrisisState<T>>
    implements $CrisisStateCopyWith<T, $Res> {
  _$CrisisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CrisisState
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
    extends _$CrisisStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CrisisState<$T>.initial()';
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
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(GeneratedCrisisResponse crisis) generated,
    required TResult Function(T crisis) resolved,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(GeneratedCrisisResponse crisis)? generated,
    TResult? Function(T crisis)? resolved,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(GeneratedCrisisResponse crisis)? generated,
    TResult Function(T crisis)? resolved,
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
    required TResult Function(CrisisSuccess<T> value) success,
    required TResult Function(CrisisError<T> value) error,
    required TResult Function(CrisisAdded<T> value) generated,
    required TResult Function(CrisisResolved<T> value) resolved,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(CrisisSuccess<T> value)? success,
    TResult? Function(CrisisError<T> value)? error,
    TResult? Function(CrisisAdded<T> value)? generated,
    TResult? Function(CrisisResolved<T> value)? resolved,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(CrisisSuccess<T> value)? success,
    TResult Function(CrisisError<T> value)? error,
    TResult Function(CrisisAdded<T> value)? generated,
    TResult Function(CrisisResolved<T> value)? resolved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements CrisisState<T> {
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
    extends _$CrisisStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CrisisState<$T>.loading()';
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
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(GeneratedCrisisResponse crisis) generated,
    required TResult Function(T crisis) resolved,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(GeneratedCrisisResponse crisis)? generated,
    TResult? Function(T crisis)? resolved,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(GeneratedCrisisResponse crisis)? generated,
    TResult Function(T crisis)? resolved,
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
    required TResult Function(CrisisSuccess<T> value) success,
    required TResult Function(CrisisError<T> value) error,
    required TResult Function(CrisisAdded<T> value) generated,
    required TResult Function(CrisisResolved<T> value) resolved,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(CrisisSuccess<T> value)? success,
    TResult? Function(CrisisError<T> value)? error,
    TResult? Function(CrisisAdded<T> value)? generated,
    TResult? Function(CrisisResolved<T> value)? resolved,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(CrisisSuccess<T> value)? success,
    TResult Function(CrisisError<T> value)? error,
    TResult Function(CrisisAdded<T> value)? generated,
    TResult Function(CrisisResolved<T> value)? resolved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements CrisisState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$CrisisSuccessImplCopyWith<T, $Res> {
  factory _$$CrisisSuccessImplCopyWith(_$CrisisSuccessImpl<T> value,
          $Res Function(_$CrisisSuccessImpl<T>) then) =
      __$$CrisisSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CrisisSuccessImplCopyWithImpl<T, $Res>
    extends _$CrisisStateCopyWithImpl<T, $Res, _$CrisisSuccessImpl<T>>
    implements _$$CrisisSuccessImplCopyWith<T, $Res> {
  __$$CrisisSuccessImplCopyWithImpl(_$CrisisSuccessImpl<T> _value,
      $Res Function(_$CrisisSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CrisisSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CrisisSuccessImpl<T> implements CrisisSuccess<T> {
  const _$CrisisSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CrisisState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrisisSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrisisSuccessImplCopyWith<T, _$CrisisSuccessImpl<T>> get copyWith =>
      __$$CrisisSuccessImplCopyWithImpl<T, _$CrisisSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(GeneratedCrisisResponse crisis) generated,
    required TResult Function(T crisis) resolved,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(GeneratedCrisisResponse crisis)? generated,
    TResult? Function(T crisis)? resolved,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(GeneratedCrisisResponse crisis)? generated,
    TResult Function(T crisis)? resolved,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(CrisisSuccess<T> value) success,
    required TResult Function(CrisisError<T> value) error,
    required TResult Function(CrisisAdded<T> value) generated,
    required TResult Function(CrisisResolved<T> value) resolved,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(CrisisSuccess<T> value)? success,
    TResult? Function(CrisisError<T> value)? error,
    TResult? Function(CrisisAdded<T> value)? generated,
    TResult? Function(CrisisResolved<T> value)? resolved,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(CrisisSuccess<T> value)? success,
    TResult Function(CrisisError<T> value)? error,
    TResult Function(CrisisAdded<T> value)? generated,
    TResult Function(CrisisResolved<T> value)? resolved,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CrisisSuccess<T> implements CrisisState<T> {
  const factory CrisisSuccess(final T data) = _$CrisisSuccessImpl<T>;

  T get data;

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrisisSuccessImplCopyWith<T, _$CrisisSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CrisisErrorImplCopyWith<T, $Res> {
  factory _$$CrisisErrorImplCopyWith(_$CrisisErrorImpl<T> value,
          $Res Function(_$CrisisErrorImpl<T>) then) =
      __$$CrisisErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CrisisErrorImplCopyWithImpl<T, $Res>
    extends _$CrisisStateCopyWithImpl<T, $Res, _$CrisisErrorImpl<T>>
    implements _$$CrisisErrorImplCopyWith<T, $Res> {
  __$$CrisisErrorImplCopyWithImpl(
      _$CrisisErrorImpl<T> _value, $Res Function(_$CrisisErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CrisisErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CrisisErrorImpl<T> implements CrisisError<T> {
  const _$CrisisErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CrisisState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrisisErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrisisErrorImplCopyWith<T, _$CrisisErrorImpl<T>> get copyWith =>
      __$$CrisisErrorImplCopyWithImpl<T, _$CrisisErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(GeneratedCrisisResponse crisis) generated,
    required TResult Function(T crisis) resolved,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(GeneratedCrisisResponse crisis)? generated,
    TResult? Function(T crisis)? resolved,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(GeneratedCrisisResponse crisis)? generated,
    TResult Function(T crisis)? resolved,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(CrisisSuccess<T> value) success,
    required TResult Function(CrisisError<T> value) error,
    required TResult Function(CrisisAdded<T> value) generated,
    required TResult Function(CrisisResolved<T> value) resolved,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(CrisisSuccess<T> value)? success,
    TResult? Function(CrisisError<T> value)? error,
    TResult? Function(CrisisAdded<T> value)? generated,
    TResult? Function(CrisisResolved<T> value)? resolved,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(CrisisSuccess<T> value)? success,
    TResult Function(CrisisError<T> value)? error,
    TResult Function(CrisisAdded<T> value)? generated,
    TResult Function(CrisisResolved<T> value)? resolved,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CrisisError<T> implements CrisisState<T> {
  const factory CrisisError({required final String error}) =
      _$CrisisErrorImpl<T>;

  String get error;

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrisisErrorImplCopyWith<T, _$CrisisErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CrisisAddedImplCopyWith<T, $Res> {
  factory _$$CrisisAddedImplCopyWith(_$CrisisAddedImpl<T> value,
          $Res Function(_$CrisisAddedImpl<T>) then) =
      __$$CrisisAddedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({GeneratedCrisisResponse crisis});
}

/// @nodoc
class __$$CrisisAddedImplCopyWithImpl<T, $Res>
    extends _$CrisisStateCopyWithImpl<T, $Res, _$CrisisAddedImpl<T>>
    implements _$$CrisisAddedImplCopyWith<T, $Res> {
  __$$CrisisAddedImplCopyWithImpl(
      _$CrisisAddedImpl<T> _value, $Res Function(_$CrisisAddedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crisis = null,
  }) {
    return _then(_$CrisisAddedImpl<T>(
      crisis: null == crisis
          ? _value.crisis
          : crisis // ignore: cast_nullable_to_non_nullable
              as GeneratedCrisisResponse,
    ));
  }
}

/// @nodoc

class _$CrisisAddedImpl<T> implements CrisisAdded<T> {
  const _$CrisisAddedImpl({required this.crisis});

  @override
  final GeneratedCrisisResponse crisis;

  @override
  String toString() {
    return 'CrisisState<$T>.generated(crisis: $crisis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrisisAddedImpl<T> &&
            (identical(other.crisis, crisis) || other.crisis == crisis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crisis);

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrisisAddedImplCopyWith<T, _$CrisisAddedImpl<T>> get copyWith =>
      __$$CrisisAddedImplCopyWithImpl<T, _$CrisisAddedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(GeneratedCrisisResponse crisis) generated,
    required TResult Function(T crisis) resolved,
  }) {
    return generated(crisis);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(GeneratedCrisisResponse crisis)? generated,
    TResult? Function(T crisis)? resolved,
  }) {
    return generated?.call(crisis);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(GeneratedCrisisResponse crisis)? generated,
    TResult Function(T crisis)? resolved,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(crisis);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(CrisisSuccess<T> value) success,
    required TResult Function(CrisisError<T> value) error,
    required TResult Function(CrisisAdded<T> value) generated,
    required TResult Function(CrisisResolved<T> value) resolved,
  }) {
    return generated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(CrisisSuccess<T> value)? success,
    TResult? Function(CrisisError<T> value)? error,
    TResult? Function(CrisisAdded<T> value)? generated,
    TResult? Function(CrisisResolved<T> value)? resolved,
  }) {
    return generated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(CrisisSuccess<T> value)? success,
    TResult Function(CrisisError<T> value)? error,
    TResult Function(CrisisAdded<T> value)? generated,
    TResult Function(CrisisResolved<T> value)? resolved,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(this);
    }
    return orElse();
  }
}

abstract class CrisisAdded<T> implements CrisisState<T> {
  const factory CrisisAdded({required final GeneratedCrisisResponse crisis}) =
      _$CrisisAddedImpl<T>;

  GeneratedCrisisResponse get crisis;

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrisisAddedImplCopyWith<T, _$CrisisAddedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CrisisResolvedImplCopyWith<T, $Res> {
  factory _$$CrisisResolvedImplCopyWith(_$CrisisResolvedImpl<T> value,
          $Res Function(_$CrisisResolvedImpl<T>) then) =
      __$$CrisisResolvedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T crisis});
}

/// @nodoc
class __$$CrisisResolvedImplCopyWithImpl<T, $Res>
    extends _$CrisisStateCopyWithImpl<T, $Res, _$CrisisResolvedImpl<T>>
    implements _$$CrisisResolvedImplCopyWith<T, $Res> {
  __$$CrisisResolvedImplCopyWithImpl(_$CrisisResolvedImpl<T> _value,
      $Res Function(_$CrisisResolvedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crisis = freezed,
  }) {
    return _then(_$CrisisResolvedImpl<T>(
      crisis: freezed == crisis
          ? _value.crisis
          : crisis // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CrisisResolvedImpl<T> implements CrisisResolved<T> {
  const _$CrisisResolvedImpl({required this.crisis});

  @override
  final T crisis;

  @override
  String toString() {
    return 'CrisisState<$T>.resolved(crisis: $crisis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrisisResolvedImpl<T> &&
            const DeepCollectionEquality().equals(other.crisis, crisis));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(crisis));

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrisisResolvedImplCopyWith<T, _$CrisisResolvedImpl<T>> get copyWith =>
      __$$CrisisResolvedImplCopyWithImpl<T, _$CrisisResolvedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(GeneratedCrisisResponse crisis) generated,
    required TResult Function(T crisis) resolved,
  }) {
    return resolved(crisis);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(GeneratedCrisisResponse crisis)? generated,
    TResult? Function(T crisis)? resolved,
  }) {
    return resolved?.call(crisis);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(GeneratedCrisisResponse crisis)? generated,
    TResult Function(T crisis)? resolved,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(crisis);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(CrisisSuccess<T> value) success,
    required TResult Function(CrisisError<T> value) error,
    required TResult Function(CrisisAdded<T> value) generated,
    required TResult Function(CrisisResolved<T> value) resolved,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(CrisisSuccess<T> value)? success,
    TResult? Function(CrisisError<T> value)? error,
    TResult? Function(CrisisAdded<T> value)? generated,
    TResult? Function(CrisisResolved<T> value)? resolved,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(CrisisSuccess<T> value)? success,
    TResult Function(CrisisError<T> value)? error,
    TResult Function(CrisisAdded<T> value)? generated,
    TResult Function(CrisisResolved<T> value)? resolved,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class CrisisResolved<T> implements CrisisState<T> {
  const factory CrisisResolved({required final T crisis}) =
      _$CrisisResolvedImpl<T>;

  T get crisis;

  /// Create a copy of CrisisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrisisResolvedImplCopyWith<T, _$CrisisResolvedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

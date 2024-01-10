// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorMessageModel _$ErrorMessageModelFromJson(Map<String, dynamic> json) {
  return _ErrorMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorMessageModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  ErrorModel get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMessageModelCopyWith<ErrorMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMessageModelCopyWith<$Res> {
  factory $ErrorMessageModelCopyWith(
          ErrorMessageModel value, $Res Function(ErrorMessageModel) then) =
      _$ErrorMessageModelCopyWithImpl<$Res, ErrorMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'success') bool success,
      @JsonKey(name: 'error') ErrorModel error});

  $ErrorModelCopyWith<$Res> get error;
}

/// @nodoc
class _$ErrorMessageModelCopyWithImpl<$Res, $Val extends ErrorMessageModel>
    implements $ErrorMessageModelCopyWith<$Res> {
  _$ErrorMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res> get error {
    return $ErrorModelCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ErrorMessageModelImplCopyWith<$Res>
    implements $ErrorMessageModelCopyWith<$Res> {
  factory _$$ErrorMessageModelImplCopyWith(_$ErrorMessageModelImpl value,
          $Res Function(_$ErrorMessageModelImpl) then) =
      __$$ErrorMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'success') bool success,
      @JsonKey(name: 'error') ErrorModel error});

  @override
  $ErrorModelCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorMessageModelImplCopyWithImpl<$Res>
    extends _$ErrorMessageModelCopyWithImpl<$Res, _$ErrorMessageModelImpl>
    implements _$$ErrorMessageModelImplCopyWith<$Res> {
  __$$ErrorMessageModelImplCopyWithImpl(_$ErrorMessageModelImpl _value,
      $Res Function(_$ErrorMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(_$ErrorMessageModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorMessageModelImpl implements _ErrorMessageModel {
  const _$ErrorMessageModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'error') required this.error});

  factory _$ErrorMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorMessageModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'error')
  final ErrorModel error;

  @override
  String toString() {
    return 'ErrorMessageModel(status: $status, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMessageModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, success, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMessageModelImplCopyWith<_$ErrorMessageModelImpl> get copyWith =>
      __$$ErrorMessageModelImplCopyWithImpl<_$ErrorMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorMessageModel implements ErrorMessageModel {
  const factory _ErrorMessageModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'success') required final bool success,
          @JsonKey(name: 'error') required final ErrorModel error}) =
      _$ErrorMessageModelImpl;

  factory _ErrorMessageModel.fromJson(Map<String, dynamic> json) =
      _$ErrorMessageModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'error')
  ErrorModel get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorMessageModelImplCopyWith<_$ErrorMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return _ErrorModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorModel {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res, ErrorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res, $Val extends ErrorModel>
    implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorModelImplCopyWith<$Res>
    implements $ErrorModelCopyWith<$Res> {
  factory _$$ErrorModelImplCopyWith(
          _$ErrorModelImpl value, $Res Function(_$ErrorModelImpl) then) =
      __$$ErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$ErrorModelImplCopyWithImpl<$Res>
    extends _$ErrorModelCopyWithImpl<$Res, _$ErrorModelImpl>
    implements _$$ErrorModelImplCopyWith<$Res> {
  __$$ErrorModelImplCopyWithImpl(
      _$ErrorModelImpl _value, $Res Function(_$ErrorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$ErrorModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorModelImpl implements _ErrorModel {
  const _$ErrorModelImpl(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'message') required this.message});

  factory _$ErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorModelImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'ErrorModel(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      __$$ErrorModelImplCopyWithImpl<_$ErrorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorModel implements ErrorModel {
  const factory _ErrorModel(
          {@JsonKey(name: 'code') required final String code,
          @JsonKey(name: 'message') required final String message}) =
      _$ErrorModelImpl;

  factory _ErrorModel.fromJson(Map<String, dynamic> json) =
      _$ErrorModelImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

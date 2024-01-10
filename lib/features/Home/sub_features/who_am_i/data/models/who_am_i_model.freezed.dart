// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'who_am_i_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WhoAmIResponseModel _$WhoAmIResponseModelFromJson(Map<String, dynamic> json) {
  return _WhoAmIResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WhoAmIResponseModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LoginDataModel? get profileModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WhoAmIResponseModelCopyWith<WhoAmIResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhoAmIResponseModelCopyWith<$Res> {
  factory $WhoAmIResponseModelCopyWith(
          WhoAmIResponseModel value, $Res Function(WhoAmIResponseModel) then) =
      _$WhoAmIResponseModelCopyWithImpl<$Res, WhoAmIResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') LoginDataModel? profileModel});

  $LoginDataModelCopyWith<$Res>? get profileModel;
}

/// @nodoc
class _$WhoAmIResponseModelCopyWithImpl<$Res, $Val extends WhoAmIResponseModel>
    implements $WhoAmIResponseModelCopyWith<$Res> {
  _$WhoAmIResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = freezed,
    Object? profileModel = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as LoginDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginDataModelCopyWith<$Res>? get profileModel {
    if (_value.profileModel == null) {
      return null;
    }

    return $LoginDataModelCopyWith<$Res>(_value.profileModel!, (value) {
      return _then(_value.copyWith(profileModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WhoAmIResponseModelImplCopyWith<$Res>
    implements $WhoAmIResponseModelCopyWith<$Res> {
  factory _$$WhoAmIResponseModelImplCopyWith(_$WhoAmIResponseModelImpl value,
          $Res Function(_$WhoAmIResponseModelImpl) then) =
      __$$WhoAmIResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') LoginDataModel? profileModel});

  @override
  $LoginDataModelCopyWith<$Res>? get profileModel;
}

/// @nodoc
class __$$WhoAmIResponseModelImplCopyWithImpl<$Res>
    extends _$WhoAmIResponseModelCopyWithImpl<$Res, _$WhoAmIResponseModelImpl>
    implements _$$WhoAmIResponseModelImplCopyWith<$Res> {
  __$$WhoAmIResponseModelImplCopyWithImpl(_$WhoAmIResponseModelImpl _value,
      $Res Function(_$WhoAmIResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = freezed,
    Object? profileModel = freezed,
  }) {
    return _then(_$WhoAmIResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as LoginDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WhoAmIResponseModelImpl implements _WhoAmIResponseModel {
  const _$WhoAmIResponseModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'success') this.success,
      @JsonKey(name: 'data') this.profileModel});

  factory _$WhoAmIResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhoAmIResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'data')
  final LoginDataModel? profileModel;

  @override
  String toString() {
    return 'WhoAmIResponseModel(status: $status, success: $success, profileModel: $profileModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhoAmIResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.profileModel, profileModel) ||
                other.profileModel == profileModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, success, profileModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhoAmIResponseModelImplCopyWith<_$WhoAmIResponseModelImpl> get copyWith =>
      __$$WhoAmIResponseModelImplCopyWithImpl<_$WhoAmIResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhoAmIResponseModelImplToJson(
      this,
    );
  }
}

abstract class _WhoAmIResponseModel implements WhoAmIResponseModel {
  const factory _WhoAmIResponseModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'data') final LoginDataModel? profileModel}) =
      _$WhoAmIResponseModelImpl;

  factory _WhoAmIResponseModel.fromJson(Map<String, dynamic> json) =
      _$WhoAmIResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'data')
  LoginDataModel? get profileModel;
  @override
  @JsonKey(ignore: true)
  _$$WhoAmIResponseModelImplCopyWith<_$WhoAmIResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

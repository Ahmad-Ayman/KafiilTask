// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LoginDataModel get loginDataModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get access_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res, LoginResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'success') bool success,
      @JsonKey(name: 'data') LoginDataModel loginDataModel,
      @JsonKey(name: 'access_token') String access_token});

  $LoginDataModelCopyWith<$Res> get loginDataModel;
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res, $Val extends LoginResponseModel>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = null,
    Object? loginDataModel = null,
    Object? access_token = null,
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
      loginDataModel: null == loginDataModel
          ? _value.loginDataModel
          : loginDataModel // ignore: cast_nullable_to_non_nullable
              as LoginDataModel,
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginDataModelCopyWith<$Res> get loginDataModel {
    return $LoginDataModelCopyWith<$Res>(_value.loginDataModel, (value) {
      return _then(_value.copyWith(loginDataModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseModelImplCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$$LoginResponseModelImplCopyWith(_$LoginResponseModelImpl value,
          $Res Function(_$LoginResponseModelImpl) then) =
      __$$LoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'success') bool success,
      @JsonKey(name: 'data') LoginDataModel loginDataModel,
      @JsonKey(name: 'access_token') String access_token});

  @override
  $LoginDataModelCopyWith<$Res> get loginDataModel;
}

/// @nodoc
class __$$LoginResponseModelImplCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res, _$LoginResponseModelImpl>
    implements _$$LoginResponseModelImplCopyWith<$Res> {
  __$$LoginResponseModelImplCopyWithImpl(_$LoginResponseModelImpl _value,
      $Res Function(_$LoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = null,
    Object? loginDataModel = null,
    Object? access_token = null,
  }) {
    return _then(_$LoginResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      loginDataModel: null == loginDataModel
          ? _value.loginDataModel
          : loginDataModel // ignore: cast_nullable_to_non_nullable
              as LoginDataModel,
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseModelImpl implements _LoginResponseModel {
  const _$LoginResponseModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'data') required this.loginDataModel,
      @JsonKey(name: 'access_token') required this.access_token});

  factory _$LoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'data')
  final LoginDataModel loginDataModel;
  @override
  @JsonKey(name: 'access_token')
  final String access_token;

  @override
  String toString() {
    return 'LoginResponseModel(status: $status, success: $success, loginDataModel: $loginDataModel, access_token: $access_token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.loginDataModel, loginDataModel) ||
                other.loginDataModel == loginDataModel) &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, success, loginDataModel, access_token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      __$$LoginResponseModelImplCopyWithImpl<_$LoginResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  const factory _LoginResponseModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'success') required final bool success,
          @JsonKey(name: 'data') required final LoginDataModel loginDataModel,
          @JsonKey(name: 'access_token') required final String access_token}) =
      _$LoginResponseModelImpl;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'data')
  LoginDataModel get loginDataModel;
  @override
  @JsonKey(name: 'access_token')
  String get access_token;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) {
  return _LoginDataModel.fromJson(json);
}

/// @nodoc
mixin _$LoginDataModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get first_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get last_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'about')
  String? get about => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<TagsModel>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite_social_media')
  List<String>? get favorite_social_media => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary')
  int? get salary => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birth_date => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  TypeModel? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataModelCopyWith<LoginDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataModelCopyWith<$Res> {
  factory $LoginDataModelCopyWith(
          LoginDataModel value, $Res Function(LoginDataModel) then) =
      _$LoginDataModelCopyWithImpl<$Res, LoginDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? first_name,
      @JsonKey(name: 'last_name') String? last_name,
      @JsonKey(name: 'about') String? about,
      @JsonKey(name: 'tags') List<TagsModel>? tags,
      @JsonKey(name: 'favorite_social_media')
      List<String>? favorite_social_media,
      @JsonKey(name: 'salary') int? salary,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'birth_date') String? birth_date,
      @JsonKey(name: 'gender') int? gender,
      @JsonKey(name: 'type') TypeModel? type,
      @JsonKey(name: 'avatar') String? avatar});

  $TypeModelCopyWith<$Res>? get type;
}

/// @nodoc
class _$LoginDataModelCopyWithImpl<$Res, $Val extends LoginDataModel>
    implements $LoginDataModelCopyWith<$Res> {
  _$LoginDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? about = freezed,
    Object? tags = freezed,
    Object? favorite_social_media = freezed,
    Object? salary = freezed,
    Object? email = freezed,
    Object? birth_date = freezed,
    Object? gender = freezed,
    Object? type = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagsModel>?,
      favorite_social_media: freezed == favorite_social_media
          ? _value.favorite_social_media
          : favorite_social_media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birth_date: freezed == birth_date
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TypeModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginDataModelImplCopyWith<$Res>
    implements $LoginDataModelCopyWith<$Res> {
  factory _$$LoginDataModelImplCopyWith(_$LoginDataModelImpl value,
          $Res Function(_$LoginDataModelImpl) then) =
      __$$LoginDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? first_name,
      @JsonKey(name: 'last_name') String? last_name,
      @JsonKey(name: 'about') String? about,
      @JsonKey(name: 'tags') List<TagsModel>? tags,
      @JsonKey(name: 'favorite_social_media')
      List<String>? favorite_social_media,
      @JsonKey(name: 'salary') int? salary,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'birth_date') String? birth_date,
      @JsonKey(name: 'gender') int? gender,
      @JsonKey(name: 'type') TypeModel? type,
      @JsonKey(name: 'avatar') String? avatar});

  @override
  $TypeModelCopyWith<$Res>? get type;
}

/// @nodoc
class __$$LoginDataModelImplCopyWithImpl<$Res>
    extends _$LoginDataModelCopyWithImpl<$Res, _$LoginDataModelImpl>
    implements _$$LoginDataModelImplCopyWith<$Res> {
  __$$LoginDataModelImplCopyWithImpl(
      _$LoginDataModelImpl _value, $Res Function(_$LoginDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? about = freezed,
    Object? tags = freezed,
    Object? favorite_social_media = freezed,
    Object? salary = freezed,
    Object? email = freezed,
    Object? birth_date = freezed,
    Object? gender = freezed,
    Object? type = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$LoginDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagsModel>?,
      favorite_social_media: freezed == favorite_social_media
          ? _value._favorite_social_media
          : favorite_social_media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birth_date: freezed == birth_date
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataModelImpl implements _LoginDataModel {
  const _$LoginDataModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'first_name') this.first_name,
      @JsonKey(name: 'last_name') this.last_name,
      @JsonKey(name: 'about') this.about,
      @JsonKey(name: 'tags') final List<TagsModel>? tags,
      @JsonKey(name: 'favorite_social_media')
      final List<String>? favorite_social_media,
      @JsonKey(name: 'salary') this.salary,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'birth_date') this.birth_date,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'avatar') this.avatar})
      : _tags = tags,
        _favorite_social_media = favorite_social_media;

  factory _$LoginDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'first_name')
  final String? first_name;
  @override
  @JsonKey(name: 'last_name')
  final String? last_name;
  @override
  @JsonKey(name: 'about')
  final String? about;
  final List<TagsModel>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<TagsModel>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _favorite_social_media;
  @override
  @JsonKey(name: 'favorite_social_media')
  List<String>? get favorite_social_media {
    final value = _favorite_social_media;
    if (value == null) return null;
    if (_favorite_social_media is EqualUnmodifiableListView)
      return _favorite_social_media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'salary')
  final int? salary;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'birth_date')
  final String? birth_date;
  @override
  @JsonKey(name: 'gender')
  final int? gender;
  @override
  @JsonKey(name: 'type')
  final TypeModel? type;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;

  @override
  String toString() {
    return 'LoginDataModel(id: $id, first_name: $first_name, last_name: $last_name, about: $about, tags: $tags, favorite_social_media: $favorite_social_media, salary: $salary, email: $email, birth_date: $birth_date, gender: $gender, type: $type, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.about, about) || other.about == about) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._favorite_social_media, _favorite_social_media) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birth_date, birth_date) ||
                other.birth_date == birth_date) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      first_name,
      last_name,
      about,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_favorite_social_media),
      salary,
      email,
      birth_date,
      gender,
      type,
      avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataModelImplCopyWith<_$LoginDataModelImpl> get copyWith =>
      __$$LoginDataModelImplCopyWithImpl<_$LoginDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataModelImplToJson(
      this,
    );
  }
}

abstract class _LoginDataModel implements LoginDataModel {
  const factory _LoginDataModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'first_name') final String? first_name,
      @JsonKey(name: 'last_name') final String? last_name,
      @JsonKey(name: 'about') final String? about,
      @JsonKey(name: 'tags') final List<TagsModel>? tags,
      @JsonKey(name: 'favorite_social_media')
      final List<String>? favorite_social_media,
      @JsonKey(name: 'salary') final int? salary,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'birth_date') final String? birth_date,
      @JsonKey(name: 'gender') final int? gender,
      @JsonKey(name: 'type') final TypeModel? type,
      @JsonKey(name: 'avatar') final String? avatar}) = _$LoginDataModelImpl;

  factory _LoginDataModel.fromJson(Map<String, dynamic> json) =
      _$LoginDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get first_name;
  @override
  @JsonKey(name: 'last_name')
  String? get last_name;
  @override
  @JsonKey(name: 'about')
  String? get about;
  @override
  @JsonKey(name: 'tags')
  List<TagsModel>? get tags;
  @override
  @JsonKey(name: 'favorite_social_media')
  List<String>? get favorite_social_media;
  @override
  @JsonKey(name: 'salary')
  int? get salary;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'birth_date')
  String? get birth_date;
  @override
  @JsonKey(name: 'gender')
  int? get gender;
  @override
  @JsonKey(name: 'type')
  TypeModel? get type;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$LoginDataModelImplCopyWith<_$LoginDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagsModel _$TagsModelFromJson(Map<String, dynamic> json) {
  return _TagsModel.fromJson(json);
}

/// @nodoc
mixin _$TagsModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagsModelCopyWith<TagsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsModelCopyWith<$Res> {
  factory $TagsModelCopyWith(TagsModel value, $Res Function(TagsModel) then) =
      _$TagsModelCopyWithImpl<$Res, TagsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$TagsModelCopyWithImpl<$Res, $Val extends TagsModel>
    implements $TagsModelCopyWith<$Res> {
  _$TagsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagsModelImplCopyWith<$Res>
    implements $TagsModelCopyWith<$Res> {
  factory _$$TagsModelImplCopyWith(
          _$TagsModelImpl value, $Res Function(_$TagsModelImpl) then) =
      __$$TagsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$TagsModelImplCopyWithImpl<$Res>
    extends _$TagsModelCopyWithImpl<$Res, _$TagsModelImpl>
    implements _$$TagsModelImplCopyWith<$Res> {
  __$$TagsModelImplCopyWithImpl(
      _$TagsModelImpl _value, $Res Function(_$TagsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TagsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagsModelImpl implements _TagsModel {
  const _$TagsModelImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$TagsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'TagsModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsModelImplCopyWith<_$TagsModelImpl> get copyWith =>
      __$$TagsModelImplCopyWithImpl<_$TagsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagsModelImplToJson(
      this,
    );
  }
}

abstract class _TagsModel implements TagsModel {
  const factory _TagsModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$TagsModelImpl;

  factory _TagsModel.fromJson(Map<String, dynamic> json) =
      _$TagsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$TagsModelImplCopyWith<_$TagsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeModel _$TypeModelFromJson(Map<String, dynamic> json) {
  return _TypeModel.fromJson(json);
}

/// @nodoc
mixin _$TypeModel {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nice_name')
  String? get nice_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeModelCopyWith<TypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeModelCopyWith<$Res> {
  factory $TypeModelCopyWith(TypeModel value, $Res Function(TypeModel) then) =
      _$TypeModelCopyWithImpl<$Res, TypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'nice_name') String? nice_name});
}

/// @nodoc
class _$TypeModelCopyWithImpl<$Res, $Val extends TypeModel>
    implements $TypeModelCopyWith<$Res> {
  _$TypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? nice_name = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nice_name: freezed == nice_name
          ? _value.nice_name
          : nice_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeModelImplCopyWith<$Res>
    implements $TypeModelCopyWith<$Res> {
  factory _$$TypeModelImplCopyWith(
          _$TypeModelImpl value, $Res Function(_$TypeModelImpl) then) =
      __$$TypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'nice_name') String? nice_name});
}

/// @nodoc
class __$$TypeModelImplCopyWithImpl<$Res>
    extends _$TypeModelCopyWithImpl<$Res, _$TypeModelImpl>
    implements _$$TypeModelImplCopyWith<$Res> {
  __$$TypeModelImplCopyWithImpl(
      _$TypeModelImpl _value, $Res Function(_$TypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? nice_name = freezed,
  }) {
    return _then(_$TypeModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nice_name: freezed == nice_name
          ? _value.nice_name
          : nice_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeModelImpl implements _TypeModel {
  const _$TypeModelImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'nice_name') this.nice_name});

  factory _$TypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'nice_name')
  final String? nice_name;

  @override
  String toString() {
    return 'TypeModel(code: $code, name: $name, nice_name: $nice_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nice_name, nice_name) ||
                other.nice_name == nice_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, nice_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeModelImplCopyWith<_$TypeModelImpl> get copyWith =>
      __$$TypeModelImplCopyWithImpl<_$TypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeModelImplToJson(
      this,
    );
  }
}

abstract class _TypeModel implements TypeModel {
  const factory _TypeModel(
      {@JsonKey(name: 'code') final int? code,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'nice_name') final String? nice_name}) = _$TypeModelImpl;

  factory _TypeModel.fromJson(Map<String, dynamic> json) =
      _$TypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'nice_name')
  String? get nice_name;
  @override
  @JsonKey(ignore: true)
  _$$TypeModelImplCopyWith<_$TypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

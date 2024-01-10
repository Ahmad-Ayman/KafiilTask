// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      status: json['status'] as int?,
      success: json['success'] as bool,
      loginDataModel:
          LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
      access_token: json['access_token'] as String,
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'success': instance.success,
      'data': instance.loginDataModel,
      'access_token': instance.access_token,
    };

_$LoginDataModelImpl _$$LoginDataModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataModelImpl(
      id: json['id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      about: json['about'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TagsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      favorite_social_media: (json['favorite_social_media'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      salary: json['salary'] as int?,
      email: json['email'] as String?,
      birth_date: json['birth_date'] as String?,
      gender: json['gender'] as int?,
      type: json['type'] == null
          ? null
          : TypeModel.fromJson(json['type'] as Map<String, dynamic>),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$LoginDataModelImplToJson(
        _$LoginDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'about': instance.about,
      'tags': instance.tags,
      'favorite_social_media': instance.favorite_social_media,
      'salary': instance.salary,
      'email': instance.email,
      'birth_date': instance.birth_date,
      'gender': instance.gender,
      'type': instance.type,
      'avatar': instance.avatar,
    };

_$TagsModelImpl _$$TagsModelImplFromJson(Map<String, dynamic> json) =>
    _$TagsModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$TagsModelImplToJson(_$TagsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$TypeModelImpl _$$TypeModelImplFromJson(Map<String, dynamic> json) =>
    _$TypeModelImpl(
      code: json['code'] as int?,
      name: json['name'] as String?,
      nice_name: json['nice_name'] as String?,
    );

Map<String, dynamic> _$$TypeModelImplToJson(_$TypeModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'nice_name': instance.nice_name,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'who_am_i_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WhoAmIResponseModelImpl _$$WhoAmIResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WhoAmIResponseModelImpl(
      status: json['status'] as int?,
      success: json['success'] as bool?,
      profileModel: json['data'] == null
          ? null
          : LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WhoAmIResponseModelImplToJson(
        _$WhoAmIResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'success': instance.success,
      'data': instance.profileModel,
    };

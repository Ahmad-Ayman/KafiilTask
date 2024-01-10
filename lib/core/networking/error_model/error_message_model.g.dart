// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorMessageModelImpl _$$ErrorMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorMessageModelImpl(
      status: json['status'] as int?,
      success: json['success'] as bool,
      error: ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorMessageModelImplToJson(
        _$ErrorMessageModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'success': instance.success,
      'error': instance.error,
    };

_$ErrorModelImpl _$$ErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$ErrorModelImpl(
      code: json['code'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ErrorModelImplToJson(_$ErrorModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

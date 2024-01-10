import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'data') required LoginDataModel loginDataModel,
    @JsonKey(name: 'access_token') required String access_token,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
abstract class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'first_name') String? first_name,
    @JsonKey(name: 'last_name') String? last_name,
    @JsonKey(name: 'about') String? about,
    @JsonKey(name: 'tags') List<TagsModel>? tags,
    @JsonKey(name: 'favorite_social_media') List<String>? favorite_social_media,
    @JsonKey(name: 'salary') int? salary,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'birth_date') String? birth_date,
    @JsonKey(name: 'gender') int? gender,
    @JsonKey(name: 'type') TypeModel? type,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}

@freezed
abstract class TagsModel with _$TagsModel {
  const factory TagsModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _TagsModel;

  factory TagsModel.fromJson(Map<String, dynamic> json) =>
      _$TagsModelFromJson(json);
}

@freezed
abstract class TypeModel with _$TypeModel {
  const factory TypeModel({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'nice_name') String? nice_name,
  }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}

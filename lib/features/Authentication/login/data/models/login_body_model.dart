import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_body_model.freezed.dart';
part 'login_body_model.g.dart';

@freezed
abstract class LoginBodyModel with _$LoginBodyModel {
  const factory LoginBodyModel({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _LoginBodyModel;

  factory LoginBodyModel.fromJson(Map<String, dynamic> json) =>
      _$LoginBodyModelFromJson(json);
}

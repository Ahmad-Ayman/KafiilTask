import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../Authentication/login/data/models/login_response_model.dart';

part 'who_am_i_model.freezed.dart';
part 'who_am_i_model.g.dart';

@freezed
abstract class WhoAmIResponseModel with _$WhoAmIResponseModel {
  const factory WhoAmIResponseModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'data') LoginDataModel? profileModel,
  }) = _WhoAmIResponseModel;

  factory WhoAmIResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WhoAmIResponseModelFromJson(json);
}

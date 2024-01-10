// class ErrorMessageModel extends Equatable {
//   final String message;
//   final int status;
//
//   const ErrorMessageModel({required this.message, required this.status});
//
//   factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
//     return ErrorMessageModel(
//       message: json['message'],
//       status: json['Status'],
//     );
//   }
//
//   @override
//   List<Object> get props => [message, status];
// }
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/helpers/enums.dart';

part 'error_message_model.freezed.dart';
part 'error_message_model.g.dart';

@freezed
abstract class ErrorMessageModel with _$ErrorMessageModel {
  const factory ErrorMessageModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'error') required ErrorModel error,
  }) = _ErrorMessageModel;

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageModelFromJson(json);
}

@freezed
abstract class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'message') required String message,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}

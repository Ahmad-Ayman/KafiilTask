import 'package:kafiiltask/features/Authentication/login/data/models/login_body_model.dart';
import 'package:kafiiltask/features/Authentication/login/data/models/login_response_model.dart';

import '../../../../../../core/networking/api_constants.dart';
import '../../../../../../core/networking/network_service.dart';
import '../../../../../../core/networking/remote_response.dart';

class LoginProcessRemoteService {
  final RemoteService _service;

  LoginProcessRemoteService(this._service);

  Future<RemoteResponse<LoginResponseModel>> loginProcessService(
      {required LoginBodyModel loginBodyModel}) async {
    final remoteResponse = await _service.dioPost(
        ApiConstants.LOGIN_ENDPOINT, loginBodyModel.toJson());

    return remoteResponse.when(
      noConnection: () => const RemoteResponse.noConnection(),
      failure: (message, success, statusCode) =>
          RemoteResponse.failure(message, success, statusCode),
      data: (data) {
        if (data is! Map<String, dynamic>) {
          return const RemoteResponse.failure('Unknown Error', false, 0);
        }
        final loginResponse = LoginResponseModel.fromJson(data);

        return RemoteResponse.data(loginResponse);
      },
    );
  }
}

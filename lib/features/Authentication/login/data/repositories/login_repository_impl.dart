import 'package:dartz/dartz.dart';
import 'package:kafiiltask/features/Authentication/login/data/data_sources/remote_data_source/login_process_remote_service.dart';
import 'package:kafiiltask/features/Authentication/login/data/models/login_response_model.dart';
import 'package:kafiiltask/features/Authentication/login/domain/repositories/base_login_repository.dart';

import '../../../../../core/networking/error_model/error_message_model.dart';
import '../models/login_body_model.dart';

class ILoginRepository implements BaseLoginRepository {
  final LoginProcessRemoteService loginProcessRemoteService;

  ILoginRepository(this.loginProcessRemoteService);

  @override
  Future<Either<ErrorMessageModel, LoginResponseModel>> loginProcess(
      {required LoginBodyModel loginBodyModel}) async {
    final remoteResponse = await loginProcessRemoteService.loginProcessService(
        loginBodyModel: loginBodyModel);

    return remoteResponse.when(
      noConnection: () {
        return left(
          const ErrorMessageModel(
            status: 0,
            error: ErrorModel(code: "0", message: 'No Internet Connection'),
            success: false,
          ),
        );
      },
      failure: (message, success, statusCode) {
        return left(ErrorMessageModel(
          status: statusCode,
          error: ErrorModel(code: "${statusCode}", message: message),
          success: success,
        ));
      },
      data: (loginData) {
        return right(loginData);
      },
    );
  }
}

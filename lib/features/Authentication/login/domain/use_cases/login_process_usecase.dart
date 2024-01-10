import 'package:dartz/dartz.dart';
import 'package:kafiiltask/features/Authentication/login/data/models/login_response_model.dart';
import 'package:kafiiltask/features/Authentication/login/domain/repositories/base_login_repository.dart';

import '../../../../../core/networking/error_model/error_message_model.dart';
import '../../data/models/login_body_model.dart';

class LoginProcessUseCase {
  final BaseLoginRepository baseLoginRepository;

  LoginProcessUseCase(this.baseLoginRepository);

  Future<Either<ErrorMessageModel, LoginResponseModel>> executeLoginProcess(
      {required LoginBodyModel loginBodyModel}) async {
    return await baseLoginRepository.loginProcess(
        loginBodyModel: loginBodyModel);
  }
}

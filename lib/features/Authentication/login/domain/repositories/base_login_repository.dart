import 'package:dartz/dartz.dart';
import 'package:kafiiltask/features/Authentication/login/data/models/login_response_model.dart';

import '../../../../../core/networking/error_model/error_message_model.dart';
import '../../data/models/login_body_model.dart';

abstract class BaseLoginRepository {
  Future<Either<ErrorMessageModel, LoginResponseModel>> loginProcess(
      {required LoginBodyModel loginBodyModel});
}

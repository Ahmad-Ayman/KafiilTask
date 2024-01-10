import 'package:dartz/dartz.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/data/models/who_am_i_model.dart';

import '../../../../../../core/networking/error_model/error_message_model.dart';

abstract class BaseProfileRepository {
  Future<Either<ErrorMessageModel, WhoAmIResponseModel>> getProfileProcess();
}

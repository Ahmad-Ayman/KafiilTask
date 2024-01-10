import 'package:dartz/dartz.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/data/models/who_am_i_model.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/domain/repositories/base_profile_repository.dart';

import '../../../../../../core/networking/error_model/error_message_model.dart';

class GetProfileProcessUseCase {
  final BaseProfileRepository baseProfileRepository;

  GetProfileProcessUseCase(this.baseProfileRepository);

  Future<Either<ErrorMessageModel, WhoAmIResponseModel>>
      executeGetProfileProcess() async {
    return await baseProfileRepository.getProfileProcess();
  }
}

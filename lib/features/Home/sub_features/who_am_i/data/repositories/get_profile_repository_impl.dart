import 'package:dartz/dartz.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/data/data_sources/remote_data_source/get_profile_remote_service.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/data/models/who_am_i_model.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/domain/repositories/base_profile_repository.dart';

import '../../../../../../core/networking/error_model/error_message_model.dart';

class ProfileRepository implements BaseProfileRepository {
  final GetProfileProcessRemoteService getProfileProcessRemoteService;

  ProfileRepository(this.getProfileProcessRemoteService);

  @override
  Future<Either<ErrorMessageModel, WhoAmIResponseModel>>
      getProfileProcess() async {
    final remoteResponse =
        await getProfileProcessRemoteService.getProfileService();

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
      data: (profileData) {
        return right(profileData);
      },
    );
  }
}

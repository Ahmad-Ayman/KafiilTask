import 'package:kafiiltask/features/Home/sub_features/who_am_i/data/models/who_am_i_model.dart';

import '../../../../../../../core/networking/api_constants.dart';
import '../../../../../../../core/networking/network_service.dart';
import '../../../../../../../core/networking/remote_response.dart';

class GetProfileProcessRemoteService {
  final RemoteService _service;

  GetProfileProcessRemoteService(this._service);

  Future<RemoteResponse<WhoAmIResponseModel>> getProfileService() async {
    final remoteResponse = await _service.dioGet(ApiConstants.PROFILE_ENDPOINT,
        isForProfile: true);

    return remoteResponse.when(
      noConnection: () => const RemoteResponse.noConnection(),
      failure: (message, success, statusCode) =>
          RemoteResponse.failure(message, success, statusCode),
      data: (data) {
        if (data is! Map<String, dynamic>) {
          return const RemoteResponse.failure('Unknown Error', false, 0);
        }
        final profileResponse = WhoAmIResponseModel.fromJson(data);

        return RemoteResponse.data(profileResponse);
      },
    );
  }
}

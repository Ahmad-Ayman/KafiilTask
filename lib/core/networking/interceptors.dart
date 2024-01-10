import 'package:dio/dio.dart';
import 'package:kafiiltask/core/utils/helpers/secure_cache_helper.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    dynamic token = await SecureCacheHelper.getSecuredData(key: 'Token') ?? '';

    final modifiedOptions;
    print('token : ${token}');
    if (token is String && token.isNotEmpty) {
      modifiedOptions = options
        ..headers.addAll(
          {
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
            'Accept-Language': 'en',
            'Content-Type': 'application/json'
          },
        );
    } else {
      modifiedOptions = options
        ..headers.addAll(
          {
            'accept': 'application/json',
            'Accept-Language': 'en',
            'Content-Type': 'application/json'
          },
        );
    }

    handler.next(modifiedOptions);
  }
}

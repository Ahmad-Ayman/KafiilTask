import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureCacheHelper {
  static late FlutterSecureStorage secureStorage;

  static init() async {
    secureStorage = const FlutterSecureStorage();
  }

  static Future<void> saveSecuredData(
      {required String key, required dynamic value}) async {
    await secureStorage.write(key: key, value: value);
  }

  static dynamic getSecuredData({required String key}) async {
    return await secureStorage.read(key: key);
  }

  static Future<bool> contains({required String key}) async {
    return await secureStorage.containsKey(key: key);
  }

  static bool isNullOrEmpty({required String key}) {
    return getSecuredData(key: key) == null ||
        getSecuredData(key: key).toString().isEmpty;
  }

  static Future<void> removeSecuredData({required String key}) async {
    await secureStorage.delete(key: key);
  }

  static Future<void> clearSecureStorage() async {
    await secureStorage.deleteAll();
  }
}

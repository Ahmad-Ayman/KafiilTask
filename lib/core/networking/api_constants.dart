/// [ApiConstants] class
///
/// Contains API constants [BaseURL, EndPoints, Headers] to easily access and modify Test
///
class ApiConstants {
  static String BASE_URL = 'https://test.kafiil.com/';
  static String APIS_PATH = 'api/test/';
  static String DEPENDENCIESS_ENDPOINT = '${BASE_URL}${APIS_PATH}dependencies';
  static String LOGIN_ENDPOINT = '${BASE_URL}${APIS_PATH}user/login';
  static String REGISTER_ENDPOINT = '${BASE_URL}${APIS_PATH}user/register';
  static String PROFILE_ENDPOINT = '${BASE_URL}${APIS_PATH}user/who-am-i';
  static String COUNTRIES_ENDPOINT = '${BASE_URL}${APIS_PATH}country';
  static String SERVICES_ENDPOINT = '${BASE_URL}${APIS_PATH}service';
  static String POPULAR_SERVICES_ENDPOINT =
      '${BASE_URL}${APIS_PATH}service/popular';
  // static String upcomingMovies({required int page}) =>
  //     '${baseUrl}upcoming?language=en-US&page=$page';
  // static String movieCast({required int movieId}) =>
  //     '${baseUrl}$movieId/credits?language=en-US';
}

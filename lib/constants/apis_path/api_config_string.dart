
// ignore_for_file: constant_identifier_names

class ApiEndPoints{
  ApiEndPoints._();
  static const String BASE_URL = "https://backend.zerowastecitizen.in/";
  static const String login = "${BASE_URL}user/login";
  static const String fetchBranches = "${BASE_URL}dashboard/branches";
  static const String userProfile = "${BASE_URL}user/profile";
  static const String changePassword = "${BASE_URL}user/change_password";
  static const String dashboard = "${BASE_URL}dashboard";
  static const String add_citizen = "${BASE_URL}userDetail/add_citizen";
  static const String add_user = "${BASE_URL}userDetail/add_user";
  static const String fetchState = "${BASE_URL}state";
  static const String fetchCity = "${BASE_URL}city";
  static const String fetchCountry = "${BASE_URL}country";
  static const String fetchCitizen = "${BASE_URL}userDetail/citizen";
  static const String fetchDist = "${BASE_URL}district";
  static const String city = "${BASE_URL}city";
}

class ApiConfig{
  ApiConfig._();
  static const String CONTENT_TYPE = "application/json";
  static const String AUTH_KEY= "Auth-Key";
  static const String AUTH_VALUE= "4UyYF2Sqz256901zrjoAAZpqf67";
  static const String CLIENT_SERVICE_KEY = "Client-Service";
  static const String CLIENT_SERVICE_VALUE = "ZWCAPP";
}
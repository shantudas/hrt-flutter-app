class ApiConstant{
  /// domain
  // static const String apiDomain = "https://hrtapi.muvasia.xyz/api/v1/"; //test
  static const String apiDomain = "https://hrtapi.muv.asia/api/v1/"; //Live

  /// login
  static const String apiAppBoot = '$apiDomain/app-boot';
  static const String apiLoginOTPRequest = '$apiDomain/otp-request';
  static const String apiLogin = '$apiDomain/login';
  static const String apiLogout = '$apiDomain/login';

  /// profile
  static const String apiProfile = '$apiDomain/profile';
  static const String apiProfileOnline = '$apiDomain/online';
  static const String apiProfileLocationUpdate = '$apiDomain/location/update';

  /// address
  static const String apiAddresses = '$apiDomain/addresses';
  static const String apiUntaggedAddresses = '$apiDomain/addresses/untagged';
  static const String apiTagAddress = '$apiDomain/addresses/tag';

  /// dcp
  static const String apiDailyCallPlanDays = '$apiDomain/daily-plan/days';
  static const String apiDailyCallPlanCreate = '$apiDomain/daily-plan/create';
  static const String apiVisitingAddresses = '$apiDomain/visiting-addresses';
}


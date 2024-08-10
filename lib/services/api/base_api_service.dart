abstract class BaseApiServices {
  Future<dynamic> getApi(String url);

  Future<dynamic> postApi(dynamic data, String url);

  Future<dynamic> multipartApi(
    Map<String, String> fieldData,
    Map<String, String> fileData,
  );
}

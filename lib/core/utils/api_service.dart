import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response> post({
    required dynamic body,
    required String url,
    required String? token,
    Map<String, String>? headers,
    String? contentType,
  }) async {
    Map<String, String> finalHeaders = {
      'Authorization': 'Bearer $token',
      if (contentType != null) 'Content-Type': contentType,
      ...?headers,
    };

    var response = await dio.post(
      url,
      data: body,
      options: Options(headers: finalHeaders),
    );
    return response;
  }
}

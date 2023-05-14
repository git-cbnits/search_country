import 'dart:async';

import 'package:dio/dio.dart';

class HttpService {
  late Dio _dio;
  Dio dio() => _dio;


  HttpService({required List<Interceptor> interceptors,}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://countries.trevorblades.com',
        sendTimeout:150000,
        connectTimeout: 150000,
        receiveTimeout: 150000,
      ),
    );
    _dio.interceptors.addAll([
      ...interceptors,
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  HttpService.mockDio(Dio dio) : _dio = dio;

  Future<Response> request({
    required String method,
    required String url,
    dynamic data = const {}, // can be Map<String, dynamic> or FormData
    ResponseType responseType = ResponseType.json,
    String apiEndpoint = '',
  }) async {
    try {
      _dio.options.method = method;
      _dio.options.responseType = responseType;
      _dio.options.headers['apiEndpoint'] = apiEndpoint;

      final response = await _dio.request(
        url,
        data: data,
      );

      return response;
    } on DioError catch (e) {
      throw e.error;
    }
  }
}

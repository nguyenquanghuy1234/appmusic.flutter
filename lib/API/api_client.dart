
import 'package:dio/dio.dart';

class api_client{
  late Dio _dio;

  static final api_client _Dioclient=api_client._internal();
  api_client._internal(){
    _dio = Dio(BaseOptions(
      baseUrl: "https://api.deezer.com",
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ));
    _dio.interceptors.add(LogInterceptor());
  }
  factory api_client.getInstance(){
    return _Dioclient;
  }

  Dio get(){
    return _dio;
  }

}
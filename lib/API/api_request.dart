
import 'package:dio/dio.dart';
import 'package:app_music/API/api_client.dart';
class request {
  late Dio _dio;

  request(){
    _dio=api_client.getInstance().get();
  }
  Future get_CharMusic(){
    return _dio.get("/chart/0" );
  }
  Future get_albumMusic(){
    return _dio.get("/album/302127" );
  }
  Future search(String valueSearch){
    return _dio.get("/search" ,queryParameters: {
    "q":valueSearch
    });
  }
}
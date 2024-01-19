import 'dart:developer';

import 'package:app_music/API/api_request.dart';
import 'package:app_music/models/Search_model/music_search.dart';


import 'package:dio/dio.dart';

import '../../models/trackMusic_model/toptrack.dart';

class Reponesitory{
  late request _request;

  Reponesitory(request request1){
    _request=request1;
  }
  Future<toptrack> gettempcity() async {
    try {
      Response response = await _request.get_CharMusic();
      if (response.statusCode == 200) {
        return toptrack.fromJson(response.data);
      } else {
        log('Error: ${response.statusCode}');
        throw Exception(
            'Failed to load data'); // Hoặc xử lý lỗi theo nhu cầu của bạn
      }
    } catch (erro) {
      log(erro.toString());
      rethrow;
    }
  }

  Future search(String cityName){
    return _request.search(cityName);
  }
}
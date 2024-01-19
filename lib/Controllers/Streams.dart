import 'dart:async';

import 'package:app_music/API/Repository/Reponesitory.dart';
import 'package:dio/dio.dart';

import '../models/Search_model/music_search.dart';

class controller {

  StreamController streamController =StreamController();
  late Reponesitory _reponesitory;

  controller(Reponesitory reponesitory){
    _reponesitory=reponesitory;
  }
  void getsearch(String valueSearch) async {
    try {
      Response response = await _reponesitory.search(valueSearch);
      if (response.statusCode == 200) {
        music_search Music_search= music_search.fromJson(response.data);
        streamController.sink.add(Music_search);
      }
    } on DioError catch(dioError){
      streamController.sink.addError(dioError.response?.data["message"]);
    }catch (e){
      streamController.sink.addError(e.toString());
    }
  }
}
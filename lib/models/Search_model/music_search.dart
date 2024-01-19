
import 'dataSearch.dart';

class music_search {
  List<Data>? data;
  music_search({this.data});

  music_search.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}


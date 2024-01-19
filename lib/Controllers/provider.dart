import 'package:flutter/material.dart';

class providerAll extends ChangeNotifier{
  late int _indexs;
  late String _song;


  bool _play=true;

  bool get play=>_play;
  int get index=>_indexs;
  String get song=>_song;

  void updatesong(String itemsong){
    _song=itemsong;
    notifyListeners();
  }
  void getindex(int bien){
    _indexs = bien;
    notifyListeners();
  }
   changePlay (){
     _play = !play;
     notifyListeners();
    return _play;
  }
  getplay()=> _play=true;
}
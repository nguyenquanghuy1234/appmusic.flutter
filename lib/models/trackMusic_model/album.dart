import 'package:app_music/models/trackMusic_model/tracks.dart';

class Albums {
  List<DataAlbum>? dataAlbum;
  Albums({this.dataAlbum});

  Albums.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      dataAlbum = <DataAlbum>[];
      json['data'].forEach((v) {
        dataAlbum!.add(DataAlbum.fromJson(v));
      });
    }
  }
}

class DataAlbum {
  String? title;
  String? coverXl;
  String? tracklist;
  Artist? artist;
  DataAlbum(
      {
        this.title,
        this.coverXl,
        this.tracklist,
        this.artist,
       });

  DataAlbum.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    coverXl = json['cover_xl'];
    tracklist = json['tracklist'];
    artist =
    json['artist'] != null ? Artist.fromJson(json['artist']) : null;
  }
}

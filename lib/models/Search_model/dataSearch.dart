

import '../trackMusic_model/tracks.dart';
import 'Artistr.dart';

class Data {
  String? title;
  String? preview;
  Artistsearch? artistsearch;
  Album? album;
  Data(
      {
        this.title,
        this.preview,
        this.artistsearch,
        this.album
      });

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    preview = json['preview'];
    artistsearch = json['artist'] != null ? Artistsearch.fromJson(json['artist']) : null;
    album = json['album'] != null ? Album.fromJson(json['album']) : null;
  }
}

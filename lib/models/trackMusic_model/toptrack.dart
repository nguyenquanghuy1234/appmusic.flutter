import 'package:app_music/models/trackMusic_model/playlist.dart';
import 'package:app_music/models/trackMusic_model/podcasts.dart';
import 'package:app_music/models/trackMusic_model/tracks.dart';
import 'album.dart';
import 'artist.dart';

class toptrack {
  Tracks? tracks;
  Albums? albums;
  Artists? artists;
  Playlists? playlists;
  Podcasts? podcasts;

  toptrack(
      {this.tracks, this.albums, this.artists, this.playlists, this.podcasts});

  toptrack.fromJson(Map<String, dynamic> json) {
    tracks =
    json['tracks'] != null ? Tracks.fromJson(json['tracks']) : null;
    albums =
    json['albums'] != null ? Albums.fromJson(json['albums']) : null;
    artists =
    json['artists'] != null ? Artists.fromJson(json['artists']) : null;
    playlists = json['playlists'] != null
        ? Playlists.fromJson(json['playlists'])
        : null;
    podcasts = json['podcasts'] != null
        ? Podcasts.fromJson(json['podcasts'])
        : null;
  }
}
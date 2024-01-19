class Tracks {
  List<Data>? data;

  Tracks({this.data});

  Tracks.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  String? title;
  String? preview;
  Artist? artist;
  Album? album;

  Data({
    this.title,
    this.preview,
    this.artist,
    this.album,
  });

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    preview = json['preview'];
    artist = json['artist'] != null ? Artist.fromJson(json['artist']) : null;
    album = json['album'] != null ? Album.fromJson(json['album']) : null;
  }
}

class Artist {
  String? name;

  Artist({
    this.name,
  });

  Artist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }
}

class Album {
  String? coverXl;

  Album({
    this.coverXl,
  });

  Album.fromJson(Map<String, dynamic> json) {
    coverXl = json['cover_xl'];
  }
}

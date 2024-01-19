class Playlists {
  List<Dataplay>? dataplay;
  int? total;

  Playlists({this.dataplay, this.total});

  Playlists.fromJson(Map<String, dynamic> json) {
    if (json['dataplay'] != null) {
      dataplay = <Dataplay>[];
      json['dataplay'].forEach((v) {
        dataplay!.add(Dataplay.fromJson(v));
      });
    }
    total = json['total'];
  }
}

class Dataplay {
  int? id;
  String? title;
  bool? public;
  int? nbTracks;
  String? link;
  String? picture;
  String? pictureSmall;
  String? pictureMedium;
  String? pictureBig;
  String? pictureXl;
  String? checksum;
  String? tracklist;
  String? creationDate;
  String? md5Image;
  String? pictureType;
  String? type;

  Dataplay(
      {this.id,
        this.title,
        this.public,
        this.nbTracks,
        this.link,
        this.picture,
        this.pictureSmall,
        this.pictureMedium,
        this.pictureBig,
        this.pictureXl,
        this.checksum,
        this.tracklist,
        this.creationDate,
        this.md5Image,
        this.pictureType,
        this.type});

  Dataplay.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    public = json['public'];
    nbTracks = json['nb_tracks'];
    link = json['link'];
    picture = json['picture'];
    pictureSmall = json['picture_small'];
    pictureMedium = json['picture_medium'];
    pictureBig = json['picture_big'];
    pictureXl = json['picture_xl'];
    checksum = json['checksum'];
    tracklist = json['tracklist'];
    creationDate = json['creation_date'];
    md5Image = json['md5_image'];
    pictureType = json['picture_type'];
    type = json['type'];
  }
}
class Artists {
  List<DataArtist>? dataArtist;
  Artists({this.dataArtist});

  Artists.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      dataArtist = <DataArtist>[];
      json['data'].forEach((v) {
        dataArtist!.add(DataArtist.fromJson(v));
      });
    }
  }
}

class DataArtist {
  String? name;
  String? pictureXl;
  String? tracklist;
  DataArtist(
      {this.name,
        this.pictureXl,
        this.tracklist,
        });

  DataArtist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    pictureXl = json['picture_xl'];
    tracklist = json['tracklist'];
  }
}

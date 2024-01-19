class Podcasts {
  List<Datapocart>? datapocart;
  int? total;

  Podcasts({this.datapocart, this.total});

  Podcasts.fromJson(Map<String, dynamic> json) {
    if (json['datapocart'] != null) {
      datapocart = <Datapocart>[];
      json['datapocart'].forEach((v) {
        datapocart!.add(Datapocart.fromJson(v));
      });
    }
    total = json['total'];
  }
}

class Datapocart {
  int? id;
  String? title;
  String? description;
  bool? available;
  int? fans;
  String? link;
  String? share;
  String? picture;
  String? pictureSmall;
  String? pictureMedium;
  String? pictureBig;
  String? pictureXl;
  String? type;

  Datapocart(
      {this.id,
        this.title,
        this.description,
        this.available,
        this.fans,
        this.link,
        this.share,
        this.picture,
        this.pictureSmall,
        this.pictureMedium,
        this.pictureBig,
        this.pictureXl,
        this.type});

  Datapocart.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    available = json['available'];
    fans = json['fans'];
    link = json['link'];
    share = json['share'];
    picture = json['picture'];
    pictureSmall = json['picture_small'];
    pictureMedium = json['picture_medium'];
    pictureBig = json['picture_big'];
    pictureXl = json['picture_xl'];
    type = json['type'];
  }
}
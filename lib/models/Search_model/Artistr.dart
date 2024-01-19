class Artistsearch {
  String? name;
  String? tracklists;

  Artistsearch(
      {
        this.tracklists,
        this.name});

  Artistsearch.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    tracklists = json['tracklist'];
  }
}
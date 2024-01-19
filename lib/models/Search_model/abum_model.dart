class Album {
  String? coverXl;

  Album({
    this.coverXl,
  });

  Album.fromJson(Map<String, dynamic> json) {
    coverXl = json['cover_xl'];
  }
}

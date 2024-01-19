import 'package:app_music/API/api_request.dart';
import 'package:app_music/screen/home/widget_home/Artistr_top.dart';
import 'package:app_music/screen/home/widget_home/appbar.dart';
import 'package:app_music/screen/home/widget_home/bottombar.dart';
import 'package:app_music/screen/home/widget_home/common.dart';
import 'package:app_music/screen/home/widget_home/image_slider.dart';
import 'package:app_music/screen/home/widget_home/listview_abum.dart';
import 'package:app_music/screen/home/widget_home/listview_song.dart';
import 'package:app_music/screen/home/widget_home/name.dart';
import 'package:app_music/screen/home/widget_home/topicMusic.dart';
import 'package:flutter/material.dart';
import '../../API/Repository/Reponesitory.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late Reponesitory _reponesitory;
  late request _request;

  @override
  void initState() {
    _request=request();
    _reponesitory=Reponesitory(_request);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: appBar(context)
        ),
      body: Container(
        color: Colors.black,
        child: FutureBuilder(
            future: _reponesitory.gettempcity(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                      children: [
                        slideshowimg(snapshot.data!),
                        name("Chủ Đề"),
                        topicMussic(),
                        name("Bài Hát Ấn Tượng"),
                        Common(snapshot.data!),
                        name("Top 10 Thịnh Hành"),
                        top10(snapshot.data!),
                        name("Album"),
                        listview_abum(snapshot.data!),
                        name("Có thể bạn thích"),
                        // Common(snapshot.data!),
                        // name("Tâm trạng hôm nay"),
                        // Common(snapshot.data!),
                        name("Nghệ sĩ"),
                        Artistr_top(snapshot.data!)
                      ]),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const Center(child: CircularProgressIndicator());
            }),
      ),
      bottomNavigationBar: bottombar()
    );
  }
}

import 'package:app_music/API/Repository/Reponesitory.dart';
import 'package:app_music/API/api_request.dart';
import 'package:app_music/Controllers/Streams.dart';
import 'package:app_music/Controllers/provider.dart';
import 'package:app_music/models/Search_model/music_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _textEditingController = TextEditingController();
  late request _request;
  late Reponesitory _reponesitory;
  late controller _controller;
  late String textcontent;

  @override
  void initState() {
    _request = request();
    _reponesitory = Reponesitory(_request);
    _controller = controller(_reponesitory);
    super.initState();
  }

  @override
  void dispose() {
    _controller.streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black87,
              actions: [
                Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: double.infinity,
                  child: TextFormField(
                    controller: _textEditingController,
                    style: const TextStyle(color: Colors.white),
                    onFieldSubmitted: (value) {
                      textcontent = _textEditingController.text;
                      _controller.getsearch(textcontent);
                      Provider.of<providerAll>(context, listen: false)
                          .updatesong(textcontent);
                    },
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () => _textEditingController.clear(),
                            child: const Icon(FontAwesomeIcons.xmark)),
                        suffixIconColor: Colors.white,
                        hintText: "Bạn muốn nghe gì ?",
                        hintStyle: const TextStyle(color: Colors.white70),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                ),
              ],
            ),
            body: Container(
              constraints: const BoxConstraints.expand(),
              child: StreamBuilder(
                stream: _controller.streamController.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else if (snapshot.hasData) {
                    if (snapshot.data.data.isEmpty) {
                      return const Center(child: Text("Không tìm thấy"));
                    } else {
                      return listviewsearch(snapshot.data);
                    }
                  }
                  return const Center(child: Text("Danh sách tìm kiếm rỗng"));
                },
              ),
            )));
  }
}

Widget listviewsearch(music_search musicSearch) {
  return ListView.builder(
    itemCount: musicSearch.data?.length,
    itemBuilder: (context, index) => InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/playsearch");
        Provider.of<providerAll>(context, listen: false).getindex(index);
      },
      child: ListTile(
        leading: ClipOval(
          child: Image.network(
            musicSearch.data![index].album!.coverXl!,
            width: 50.0,
            height: 50.0,
            fit: BoxFit.cover,
          ),
        ),
        title: Text("$index    ${musicSearch.data![index].title}",
            style: const TextStyle(color: Colors.black)),
        subtitle: Text(" •     ${musicSearch.data![index].artistsearch!.name!}",
            style: const TextStyle(color: Colors.black)),
        trailing: const Icon(Icons.dehaze_rounded, color: Colors.black),
      ),
    ),
  );
}

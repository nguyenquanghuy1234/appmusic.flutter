import 'package:app_music/Controllers/Streams.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:audioplayers/audioplayers.dart';
import '../API/Repository/Reponesitory.dart';
import '../API/api_request.dart';
import '../Controllers/provider.dart';

class playsearch extends StatefulWidget {
  const playsearch({super.key});

  @override
  State<playsearch> createState() => _playMusicState();
}

class _playMusicState extends State<playsearch> {
  late Reponesitory _reponesitory;
  late request _request;
  final player = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool playing = false;
  late controller _controller;

  @override
  void initState() {
    _request = request();
    _reponesitory = Reponesitory(_request);
    _controller=controller(_reponesitory);
    context.read<providerAll>().getplay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _controller.getsearch(Provider.of<providerAll>(context).song);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Bài hát bạn chọn"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.ellipsisVertical,
                  size: 20,
                ))
          ],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.chevronDown, size: 25),
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: StreamBuilder(
          stream: _controller.streamController.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Provider.of<providerAll>(context).play
                  ? player.play(UrlSource(
                  "${snapshot
                      .data!
                      .data![Provider.of<providerAll>(context, listen: false).index].preview}"))
                  : player.pause();
              return Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.maxFinite,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: NetworkImage(snapshot
                                .data!
                                .data![Provider.of<providerAll>(context, listen: false).index].album!.coverXl!),
                            // Đổi thành URL hình ảnh của bạn
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 280,
                              child: Text(
                                  snapshot
                                      .data!
                                      .data![Provider.of<providerAll>(context, listen: false).index].title,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            Text(
                              snapshot
                                  .data!
                                  .data![Provider.of<providerAll>(context, listen: false).index].artistsearch!.name!,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            )
                          ],
                        ),
                        const Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          trackHeight: 3,
                          thumbShape: const RoundSliderThumbShape(
                              disabledThumbRadius: 6,
                              enabledThumbRadius:
                              6), // Sử dụng CustomThumbShape
                          rangeThumbShape: const RoundRangeSliderThumbShape(
                              disabledThumbRadius: 6, enabledThumbRadius: 6)),
                      child: Slider(
                        value: position.inSeconds.toDouble(),
                        inactiveColor: Colors.black54,
                        thumbColor: Colors.white,
                        min: 0,
                        max: duration.inSeconds.toDouble(),
                        activeColor: Colors.white,
                        onChanged: (value) {
                          final position = Duration(seconds: value.toInt());
                          player.seek(position);
                          player.resume();
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.backwardStep,
                                color: Colors.white,
                                size: 35,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.backwardStep,
                                color: Colors.white,
                                size: 35,
                              )),
                          IconButton(
                              padding: const EdgeInsets.only(right: 36),
                              onPressed: () {
                                Provider.of<providerAll>(context, listen: false)
                                    .changePlay();
                              },
                              icon: Icon(
                                Provider.of<providerAll>(context, listen: false)
                                    .play
                                    ? FontAwesomeIcons.solidCirclePause
                                    : FontAwesomeIcons.solidCirclePlay,
                                color: Colors.white,
                                size: 60,
                                // grade: 20
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.forwardStep,
                                  color: Colors.white, size: 35)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.backwardStep,
                                color: Colors.white,
                                size: 35,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.star,
                              color: Colors.white,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.squareShareNodes,
                                color: Colors.white, size: 35))
                      ],
                    ),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

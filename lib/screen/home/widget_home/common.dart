import 'package:app_music/models/trackMusic_model/toptrack.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Controllers/provider.dart';

Widget Common(toptrack top) {
  return SizedBox(
    height: 200,
    child:  ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: top.tracks?.data!.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
            Navigator.pushNamed(context, '/playlist');
            context.read<providerAll>().getindex(index);
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  Expanded(
                      flex: 6,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                // image:NetworkImage( itemabum.tracks!.data![index].album!.coverXl!),
                                image: NetworkImage(top.tracks!.data![index].album!.coverXl!),
                                // Đổi thành ring dẫn hình ảnh của bạn
                                fit: BoxFit
                                    .cover, // BoxFit.cover để hình ảnh đầy đủ màn hình và cắt bớt phần dư thừa
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Colors.black45,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: const Icon(Icons.play_circle_outline,
                                color: Colors.white),
                          )
                        ],
                      )),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(top: 10),
                          // child: Text(itemabum.tracks!.data![index].title!,
                          child: Text( top.tracks!.data![index].title!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.white)),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(top: 2),
                          child: Text(
                            // itemabum.tracks!.data![index].artist!.name!,
                            top.tracks!.data![index].artist!.name!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
  );
}

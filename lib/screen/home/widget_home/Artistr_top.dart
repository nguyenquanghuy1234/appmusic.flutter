import 'package:app_music/models/trackMusic_model/toptrack.dart';
import 'package:flutter/material.dart';


Widget Artistr_top(toptrack itemabum) {
  return Container(
    margin: const EdgeInsets.only(bottom: 50),
    child: SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // Thay đổi scrollDirection thành Axis.horizontal
        shrinkWrap: true,
        itemCount:itemabum.artists?.dataArtist!.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                Expanded(
                    flex: 6,
                    child:
                      ClipOval(
                            child: Image.network(
                              itemabum.artists!.dataArtist![index].pictureXl!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                Expanded(
                  flex: 2,
                  child:
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(itemabum.artists!.dataArtist![index].name!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 15,color: Colors.white)),
                      ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}


import 'package:app_music/models/trackMusic_model/toptrack.dart';
import 'package:flutter/material.dart';

Widget top10(toptrack item) {
  return Container(
      margin: const EdgeInsets.only(right: 10),
      color: Colors.black26,
      child: Column(
        children: [
          ListTile(
            leading: ClipOval(
              child: Image.network(
                item.tracks!.data![0].album!.coverXl!,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            title: Text("1    ${item.tracks!.data![0].title}",
                style: const TextStyle(color: Colors.white)),
            subtitle: Text(" •     ${item.tracks!.data![0].artist!.name}",
                style: const TextStyle(color: Colors.white70)),
            trailing: const Icon(Icons.dehaze_rounded,color:Colors.white70 ),
          ),
          ListTile(
            leading: ClipOval(
              child: Image.network(
                item.tracks!.data![0].album!.coverXl!,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            title: Text("1    ${item.tracks!.data![0].title}",
                style: const TextStyle(color: Colors.white)),
            subtitle: Text(" •     ${item.tracks!.data![0].artist!.name}",
                style: const TextStyle(color: Colors.white70)),
            trailing: const Icon(Icons.dehaze_rounded,color:Colors.white70 ),
          ),
          ListTile(
            leading: ClipOval(
              child: Image.network(
                item.tracks!.data![0].album!.coverXl!,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            title: Text("1    ${item.tracks!.data![0].title}",
                style: const TextStyle(color: Colors.white)),
            subtitle: Text(" •     ${item.tracks!.data![0].artist!.name}",
                style: const TextStyle(color: Colors.white70)),
            trailing: const Icon(Icons.dehaze_rounded,color:Colors.white70 ),
          ),
          ListTile(
            leading: ClipOval(
              child: Image.network(
                item.tracks!.data![0].album!.coverXl!,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            title: Text("1    ${item.tracks!.data![0].title}",
                style: const TextStyle(color: Colors.white)),
            subtitle: Text(" •     ${item.tracks!.data![0].artist!.name}",
                style: const TextStyle(color: Colors.white70)),
            trailing: const Icon(Icons.dehaze_rounded,color:Colors.white70 ),
          ),
          ListTile(
            leading: ClipOval(
              child: Image.network(
                item.tracks!.data![0].album!.coverXl!,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            title: Text("1    ${item.tracks!.data![0].title}",
                style: const TextStyle(color: Colors.white)),
            subtitle: Text(" •     ${item.tracks!.data![0].artist!.name}",
                style: const TextStyle(color: Colors.white70)),
            trailing: const Icon(Icons.dehaze_rounded,color:Colors.white70 ),
          ),
        ],
      ));
}

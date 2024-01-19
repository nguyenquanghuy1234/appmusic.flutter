import 'package:app_music/Controllers/provider.dart';
import 'package:app_music/screen/Search.dart';
import 'package:app_music/screen/home/home_screen.dart';
import 'package:app_music/screen/playMusic.dart';
import 'package:app_music/screen/playsearch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => providerAll(),
      child: MaterialApp(
        theme: ThemeData(
            // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            //     selectedItemColor: Colors.white,// Màu của nhãn đã chọn
            // unselectedItemColor: Colors.white54, // Màu của nhãn chưa chọn
            // ),
            ),
        routes: {
          "/playlist": (context) => const playMusic(),
          "/search":(context) =>  Search(),
          "/playsearch":(context) => const playsearch()
        },
        home: const home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget bottombar(){
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor:Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white54,
    showUnselectedLabels: true,
    selectedLabelStyle: const TextStyle(fontSize: 12),
    unselectedLabelStyle: const TextStyle(fontSize: 12),
    items: const [
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.icons),
        label: "Khám Phá",
      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.arrowUpShortWide),
        label: "Shorts",
      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.radio),
        label: "Radio",
      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.user),
        label: "Của Tôi",
      ),
    ],
  );
}


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget appBar(BuildContext context) {
  final FocusNode focusNode = FocusNode();
  return AppBar(
      backgroundColor: Colors.black,
      title: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            colors: [Colors.blue, Colors.purple],
          ).createShader(bounds);
        },
        child: const Text(
          'Nhạc Của Tau',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Màu chữ sau khi áp dụng gradient
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context,'/search' );
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ))
      ],
      leading: IconButton(
        onPressed: () {
        },
        icon: const Icon(FontAwesomeIcons.bars, size: 20),
      ));
}

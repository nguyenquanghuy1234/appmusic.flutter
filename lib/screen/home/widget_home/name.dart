import 'package:flutter/material.dart';

Widget name(String? s) {
  return Container(
    margin: const EdgeInsets.only(top: 20, bottom: 20,right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          s ?? '', // Sử dụng chuỗi mặc định nếu s là null
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
        ),
        const Text(
          "Thêm", // Sử dụng chuỗi mặc định nếu s là null
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white70),
        ),
      ],
    ),
  );
}

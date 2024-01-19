import 'package:app_music/models/trackMusic_model/toptrack.dart';
import 'package:flutter/material.dart';

Widget listview_abum(toptrack itemabum) {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      // Thay đổi scrollDirection thành Axis.horizontal
      shrinkWrap: true,
      itemCount: itemabum.albums?.dataAlbum?.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(right: 10),
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: NetworkImage(
                        itemabum.albums!.dataAlbum![index].coverXl!),
                    // Đổi thành ring dẫn hình ảnh của bạn
                    fit: BoxFit
                        .cover, // BoxFit.cover để hình ảnh đầy đủ màn hình và cắt bớt phần dư thừa
                  ),
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                child: Text(itemabum.albums!.dataAlbum![index].title!,
                    maxLines: 2,
                    style: const TextStyle(fontSize: 20, color: Colors.white)),
              ),

              Container(
                  width: double.maxFinite,
                  height: 60,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(45, 45, 42, 0.0), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // stops: [0.0, 1.0],
                      // Tùy chọn: Chỉ định các điểm dừng cho gradient
                      tileMode: TileMode.clamp, // Tùy chọn: Chế độ lặp lại
                    ),
                  )),
            ],
          ),
        );
      },
    ),
  );
}

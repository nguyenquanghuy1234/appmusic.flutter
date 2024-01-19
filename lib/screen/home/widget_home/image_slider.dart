import "package:flutter/material.dart";
import "package:flutter_image_slideshow/flutter_image_slideshow.dart";

import "../../../models/trackMusic_model/toptrack.dart";

Widget slideshowimg(toptrack itemabum) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: ImageSlideshow(
      /// Width of the [ImageSlideshow].
      width: double.infinity,

      /// Height of the [ImageSlideshow].
      height: 100,

      /// The page to show when first creating the [ImageSlideshow].
      initialPage: 0,

      /// The color to paint the indicator.
      indicatorColor: Colors.white,

      /// The color to paint behind th indicator.
      indicatorBackgroundColor: Colors.grey,

      /// Called whenever the page in the center of the viewport changes.
      // onPageChanged: (value) {
      //   print('Page changed: $value');
      // },

      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 10000,

      /// Loops back to first slide.
      isLoop: true,

      /// The widgets to display in the [ImageSlideshow].
      /// Add the sample image file into the images folder
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                constraints: const BoxConstraints.expand(),
                child: Image.network(
                  itemabum.tracks!.data![0].album!.coverXl!,
                  fit: BoxFit.cover, // Đảm bảo hình ảnh phủ đầy ClipOval
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 30,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(45,45,42, 0.0),Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // stops: [0.0, 1.0],
                    // Tùy chọn: Chỉ định các điểm dừng cho gradient
                    tileMode: TileMode.clamp, // Tùy chọn: Chế độ lặp lại
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child:  Text(itemabum.tracks!.data![0].title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
              ),

            ],
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                constraints: const BoxConstraints.expand(),
                child: Image.network(
                  itemabum.tracks!.data![1].album!.coverXl!,
                  fit: BoxFit.cover, // Đảm bảo hình ảnh phủ đầy ClipOval
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 30,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(45,45,42, 0.0),Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // stops: [0.0, 1.0],
                    // Tùy chọn: Chỉ định các điểm dừng cho gradient
                    tileMode: TileMode.clamp, // Tùy chọn: Chế độ lặp lại
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child:  Text(itemabum.tracks!.data![1].title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
              ),

            ],
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                constraints: const BoxConstraints.expand(),
                child: Image.network(
                  itemabum.tracks!.data![2].album!.coverXl!,
                  fit: BoxFit.cover, // Đảm bảo hình ảnh phủ đầy ClipOval
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 30,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(45,45,42, 0.0),Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // stops: [0.0, 1.0],
                    // Tùy chọn: Chỉ định các điểm dừng cho gradient
                    tileMode: TileMode.clamp, // Tùy chọn: Chế độ lặp lại
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child:  Text(itemabum.tracks!.data![2].title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
              ),

            ],
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                constraints: const BoxConstraints.expand(),
                child: Image.network(
                  itemabum.tracks!.data![3].album!.coverXl!,
                  fit: BoxFit.cover, // Đảm bảo hình ảnh phủ đầy ClipOval
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 30,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(45,45,42, 0.0),Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // stops: [0.0, 1.0],
                    // Tùy chọn: Chỉ định các điểm dừng cho gradient
                    tileMode: TileMode.clamp, // Tùy chọn: Chế độ lặp lại
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child:  Text(itemabum.tracks!.data![3].title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
              ),

            ],
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                constraints: const BoxConstraints.expand(),
                child: Image.network(
                  itemabum.tracks!.data![4].album!.coverXl!,
                  fit: BoxFit.cover, // Đảm bảo hình ảnh phủ đầy ClipOval
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 30,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(45,45,42, 0.0),Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // stops: [0.0, 1.0],
                    // Tùy chọn: Chỉ định các điểm dừng cho gradient
                    tileMode: TileMode.clamp, // Tùy chọn: Chế độ lặp lại
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child:  Text(itemabum.tracks!.data![4].title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
              ),

            ],
          ),
        ),
      ],
    ),
  );
}

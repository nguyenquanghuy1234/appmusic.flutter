import 'package:flutter/material.dart';

Widget topicMussic() {
  List<String> imager=[
    "https://avatar-ex-swe.nixcdn.com/topic/mobile/2022/08/08/6/f/6/6/1659943944559_org.jpg",
    "https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/09/03/3/4/d/6/1599120670727_org.jpg",
    "https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/06/17/7/b/3/b/1592361216548_org.jpg",
    "https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/09/16/b/4/0/6/1600239007989_org.jpg",
    "https://avatar-ex-swe.nixcdn.com/topic/thumb/2023/06/13/d/5/7/3/1686638604107_org.jpg",
    "https://avatar-ex-swe.nixcdn.com/topic/thumb/2021/03/09/2/9/3/f/1615284927743_org.jpg",
    "https://avatar-ex-swe.nixcdn.com/topic/mobile/2022/11/24/e/a/1/f/1669262775489_org.jpg",
    "https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/06/18/8/1/b/5/1592449944070_org.jpg"
    "https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/06/18/9/5/f/7/1592449943996_org.jpg",
    "https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/06/18/8/1/b/5/1592451702976_org.jpg",
    "https://avatar-ex-swe.nixcdn.com/topic/mobile/2021/10/05/b/3/b/4/1633419154705_org.jpg",
  ];
  return SizedBox(
    height: 150,
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Số dòng trong lưới
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 2 / 6 // Khoảng cách giữa các dòng
          ),
      scrollDirection: Axis.horizontal, // Đặt hướng cuộn là chiều ngang
      itemCount: 10, // Số lượng phần tử trong lưới
      itemBuilder: (BuildContext context, int index) {
        // Tạo widget cho từng ô trong lưới
        return ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          child: Image.network(imager[index],
            fit: BoxFit.cover, // Đảm bảo hình ảnh phủ đầy ClipOval
          ),
        );
      },
    ),
  );
}

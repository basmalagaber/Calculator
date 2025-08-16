import 'package:flutter/material.dart';

import 'category_model.dart';

class ImagePage extends StatelessWidget {
  CategoryModel model;
  ImagePage({super.key, required this.model});

  List<CategoryModel> categories = [];

  getDummyData() {
    for (int i = 0; i < 100; i++) {
      categories.add(CategoryModel("images/p2.jpg $i", "Alexandria $i"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 231,
          margin: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(model.image, fit: BoxFit.cover),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff024383),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            model.text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  List<Widget> convertToWidget() {
    return categories.map((item) {
      return Row(children: [ImagePage(model: item)]);
    }).toList();
  }
}

import 'package:flutter/material.dart';

import 'category_model.dart';
import 'image_page.dart';

class MagazinPage extends StatelessWidget {
  const MagazinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xff024383),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  "Available Hotels",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p2.jpg", "Sharm El Shikh"),)
                  ),
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p1.jpg", "Alexandria",))
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p2.jpg", "Sharm El Shikh"),)
                  ),
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p1.jpg", "Alexandria",))
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p2.jpg", "Sharm El Shikh"),)
                  ),
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p1.jpg", "Alexandria",))
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p2.jpg", "Sharm El Shikh"),)
                  ),
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p1.jpg", "Alexandria",))
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p2.jpg", "Sharm El Shikh"),)
                  ),
                  Expanded(
                      child: ImagePage(model: CategoryModel("images/p1.jpg", "Alexandria",))
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

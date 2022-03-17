import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teskuis/theme.dart';

class MyAppBar {
  static get(String title) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        IconButton(
            icon: const Icon(Icons.lightbulb),
            onPressed: () {
              Get.isDarkMode
                  ? Get.changeTheme(myTheme)
                  : Get.changeTheme(ThemeData.dark());
            }
        ),
      ],
    );
  }
}
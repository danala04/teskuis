import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teskuis/theme.dart';
import 'package:teskuis/main_screen.dart';
import 'package:teskuis/login_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: LoginPage(),
    );
  }
}

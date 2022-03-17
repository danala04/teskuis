import 'dart:html';

import 'package:flutter/material.dart';
import 'package:teskuis/app_bar.dart';
import 'package:teskuis/data_dummy.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.get("Welcome Admin !"),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){

            },
            child: Card(
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(place.imageUrls[0]))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Nouveautés'),
                ),
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}

Widget _textLogin(){
  return Container(
    child: Text(
      "Isi langsung aja pesananmu ! ",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
    ),
  );
}

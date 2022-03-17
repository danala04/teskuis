import 'package:flutter/material.dart';
import 'package:teskuis/app_bar.dart';
import 'package:teskuis/login_page.dart';

String email = "";
String password = "";
bool isLoginSuccess = false;

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _logo(),
            _textLogin(),
            _noteLogin(),
            _emailField(),
            _passwordField(),
            _buttonLogin(context),
          ],
        ),
      ),
    );
  }
}

Widget _logo(){
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0,150,0,20),
      child: Image.asset(
          '/img/logo.png',
          height: 120,
        ),
    ),
  );
}

Widget _textLogin(){
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,10),
      child: Text(
        "Yuk Login Dulu !",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget _noteLogin(){
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,15),
      child: Text(
        "Masukan email dan password kamu sis",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100, color: Colors.grey),
      ),
    ),
  );
}

Widget _buttonLogin(BuildContext context){
  return ElevatedButton(
    onPressed: () {
      String pesan = "Login Gagal";
      if (email == "admin" && password == "admin") {
        pesan = "Login Success";
        isLoginSuccess = true;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginPage()));
      }
      SnackBar snackBar = SnackBar(
        content: Text(pesan),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(50,10,50,10),
      child: Text("Sign In"),
    ),
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    ),
  );
}

Widget _emailField() {
  return Container(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: TextFormField(
        onChanged: (value) {
          email = value;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          hintText: "Masukan Email",
          labelText: "E-mail",
          prefixIcon: Align(
            widthFactor: 3.0,
            heightFactor: 1.0,
            child: Icon(
              Icons.email,
            ),
          ),
        ),
      )
  );
}

Widget _passwordField() {
  return Container(
      padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
      child: TextFormField(
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          hintText: "Masukan Password",
          labelText: "Password",
          prefixIcon: Align(
            widthFactor: 3.0,
            heightFactor: 1.0,
            child: Icon(
              Icons.password,
            ),
          ),
        ),
      )
  );
}
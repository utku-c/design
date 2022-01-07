// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:reservation_hotel/constants.dart';
import 'package:reservation_hotel/sign_up_page.dart';
import 'package:avatar_glow/avatar_glow.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000033),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/icons/login.png"),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        loginInput(
                          text: "UserName",
                          icon: Icons.account_box_rounded,
                          helperText: "Kullanıcı Adını Giriniz...",
                        ),
                        SizedBox(height: 20),
                        loginInput(
                          text: "Password",
                          icon: Icons.lock,
                          helperText: "Kullanıcı Şifresini Giriniz...",
                        ),
                        SizedBox(height: 20),
                        OutlinedButton(
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontSize: kDefaultFontSize,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xff000033),
                            minimumSize:
                                Size(kDefaultWidth * 2, kDefaultHeight * 0.4),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Dont have an account ?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: kDefaultFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Sign Up Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: kDefaultFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.transparent,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: AvatarGlow(
                  glowColor: Colors.blue,
                  endRadius: 80.0,
                  repeat: true,
                  showTwoGlows: true,
                  animate: true,
                  child: Material(
                    // Replace this child with your own
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      child: Image.asset(
                        'assets/icons/arrow.png',
                        height: 60,
                      ),
                      radius: 40.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

/*
assets/icons/arrow.png
 */
  FractionallySizedBox loginInput({
    required String text,
    required IconData icon,
    required String helperText,
  }) {
    return FractionallySizedBox(
      child: TextField(
        style: TextStyle(
          decorationThickness: 0.0,
          decorationColor: Colors.white,
          // girilen yazının altındaki çizgi kalkmadı beyaza boyadık
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.8,
        ),
        decoration: InputDecoration(
          hintText: text,
          helperText: helperText,
          helperStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          prefixIcon: Icon(
            icon,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        ),
      ),
      widthFactor: 0.8,
    );
  }
}

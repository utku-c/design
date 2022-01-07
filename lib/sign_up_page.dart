// ignore_for_file: prefer_const_constructors

import 'constants.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff000033),
      ),
      backgroundColor: const Color(0xff000033),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/icons/add-user.png"),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        loginInput(
                          text: "UserName",
                          icon: Icons.account_box_rounded,
                        ),
                        SizedBox(height: 20),
                        loginInput(
                          text: "Email",
                          icon: Icons.email,
                        ),
                        SizedBox(height: 20),
                        loginInput(
                          text: "Password",
                          icon: Icons.lock,
                        ),
                        SizedBox(height: 20),
                        loginInput(
                          text: "Repeat Password",
                          icon: Icons.lock,
                        ),
                        SizedBox(height: 20),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontSize: kDefaultFontSize,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xff000033),
                            minimumSize: Size(
                              kDefaultWidth * 2,
                              kDefaultHeight * 0.4,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  FractionallySizedBox loginInput(
      {required String text, required IconData icon}) {
    return FractionallySizedBox(
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
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

// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, prefer_adjacent_string_concatenation, non_constant_identifier_names

import 'package:flutter/material.dart';

class PaymentQRPage extends StatefulWidget {
  const PaymentQRPage({Key? key}) : super(key: key);

  @override
  State<PaymentQRPage> createState() => _PaymentQRPageState();
}

class _PaymentQRPageState extends State<PaymentQRPage> {
  int isSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/barbardak.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///
              ///kapatma ve ekran küçültme iconButonları
              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 40),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () {
                        print("QR ödeme sistemi Kapatıldı");
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25, top: 40),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () {
                        print("Ekran şu an için küçültülmüyor");
                      },
                      icon: Icon(Icons.close_fullscreen_sharp),
                    ),
                  )
                ],
              ),
              SizedBox(height: 48),

              ///
              /// Text Yazıları
              ///
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: isSelect == 0
                      ? LinearGradient(
                          end: Alignment(0.1, 0.6),
                          colors: [
                            Colors.lightBlueAccent.withOpacity(.2),
                            Colors.grey.withOpacity(.2),
                          ],
                        )
                      : LinearGradient(
                          end: Alignment(0.1, 0.7),
                          colors: [
                            Colors.blue.withOpacity(.7),
                            Colors.black.withOpacity(.9),
                          ],
                        ),
                ),
                child: isSelect == 0 ? ScanQRColumn() : EnterCodeColumn(),
              ),
              SizedBox(height: 40),

              ///
              /// en alttaki iki buton
              /// scan qr ve ender code
              ///

              Padding(
                padding: EdgeInsets.only(bottom: 30, left: 30, right: 30),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0x66A1A7B6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: isSelect == 0
                                  ? Colors.white
                                  : Color(0x66A1A7B6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  isSelect = 0;
                                });
                              },
                              child: Text(
                                "Scan QR",
                                style: TextStyle(
                                  color: isSelect == 0
                                      ? Colors.blue
                                      : Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: isSelect == 1
                                  ? Colors.white
                                  : Color(0x66A1A7B6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  isSelect = 1;
                                });
                              },
                              child: Text(
                                "Enter Code",
                                style: TextStyle(
                                  color: isSelect == 1
                                      ? Colors.blue
                                      : Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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

  ///
  /// Scan QR'a tıklandığında çıkan ödeme
  ///
  Column ScanQRColumn() {
    return Column(
      children: [
        Text(
          "Scan Your QR",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w900,
            wordSpacing: 2,
          ),
        ),
        SizedBox(height: 18),
        Text(
          "Scan the code your old device that \n is logged in to this accoount",
          style: TextStyle(
              color: Colors.white, fontSize: 18, wordSpacing: 2.5, height: 1.5),
        ),
        SizedBox(height: 36),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        SizedBox(height: 12),
        Text(
          "Scan the code to pay quickly",
          style: TextStyle(
              color: Colors.white, fontSize: 18, wordSpacing: 2.5, height: 1.5),
        ),
      ],
    );
  }

  ///
  /// Enter Code'a tıklandığında çıkan ödeme
  ///
  Column EnterCodeColumn() {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Text(
                "Enter Code QR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  wordSpacing: 2,
                ),
              ),
              SizedBox(height: 18),
              Text(
                "Scan the code your old device that \n is logged in to this accoount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  wordSpacing: 2.5,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 36),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: TextField(
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
            decoration: InputDecoration(
              hintText: "QR Codunu Giriniz",
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              contentPadding: EdgeInsets.all(18),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.white, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.white, width: 2),
              ),
              focusColor: Colors.black,
              icon: Icon(
                Icons.qr_code_2_outlined,
                size: 36,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          "Scan the code to pay quickly",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            wordSpacing: 2.5,
            height: 1.5,
          ),
        ),
        GestureDetector(
          onTap: () {
            print("Ödeme tamamlandı");
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      color: Colors.blue,
                      size: 32,
                    ),
                    Text(
                      "Pay",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
          ),
        )
      ],
    );
  }
}

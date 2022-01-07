// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:reservation_hotel/payment_page.dart';

class PaymentOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.grey.shade400,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Ödeme Seçenekleri",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey.shade400,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: [
                odemeSecenegiButonu(
                  odemeSecenegiIconu: Icons.qr_code_2,
                  odemeSecenegi: "QR ile Öde",
                  odemeSecenegiRengi: Colors.lightBlue,
                  MyFunction: () {
                    print("QR ile Öde");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentQRPage(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                odemeSecenegiButonu(
                  odemeSecenegiIconu: Icons.payment_sharp,
                  odemeSecenegi: "Banka Kartı ile Öde",
                  odemeSecenegiRengi: Colors.pinkAccent,
                  MyFunction: () {
                    print("Banka Kartı ile Öde");
                  },
                ),
                SizedBox(height: 20),
                odemeSecenegiButonu(
                  odemeSecenegiIconu: Icons.payment_sharp,
                  odemeSecenegi: "Kredi Kartı ile Öde",
                  odemeSecenegiRengi: Colors.grey,
                  MyFunction: () {
                    print("Kredi Kartı ile Öde");
                  },
                ),
                SizedBox(height: 20),
                odemeSecenegiButonu(
                  odemeSecenegiIconu: Icons.payment_sharp,
                  odemeSecenegi: "Kripto Para ile Öde",
                  odemeSecenegiRengi: Colors.blueAccent,
                  MyFunction: () {},
                ),
                SizedBox(height: 20),
                odemeSecenegiButonu(
                  odemeSecenegiIconu: Icons.payment_sharp,
                  odemeSecenegi: "Banka Kartı ile Öde",
                  odemeSecenegiRengi: Colors.pinkAccent,
                  MyFunction: () {},
                ),
                SizedBox(height: 20),
                odemeSecenegiButonu(
                  odemeSecenegiIconu: Icons.payment_sharp,
                  odemeSecenegi: "IBAN'a Eft/Havale",
                  odemeSecenegiRengi: Colors.purple,
                  MyFunction: () {},
                ),
                SizedBox(height: 20),
                odemeSecenegiButonu(
                  odemeSecenegiIconu: Icons.payment_sharp,
                  odemeSecenegi: "TelefonNo ile Öde",
                  odemeSecenegiRengi: Colors.deepPurple,
                  MyFunction: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FractionallySizedBox odemeSecenegiButonu({
    required String odemeSecenegi,
    required IconData odemeSecenegiIconu,
    required Color odemeSecenegiRengi,
    required Function MyFunction,
  }) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: GestureDetector(
        onTap: () => MyFunction(),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: odemeSecenegiRengi,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  odemeSecenegiIconu,
                  color: Colors.white,
                  size: 36,
                ),
                SizedBox(width: 16),
                Text(
                  odemeSecenegi,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

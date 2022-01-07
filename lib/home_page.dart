// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:reservation_hotel/constants.dart';
import 'package:reservation_hotel/pay/payment_options.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
      // bottomNavigationBar: ButtonBar(
      //   buttonHeight: 3,
      //   children: [
      //     Container(
      //       child: Row(
      //         children: [
      //           Container(
      //             width: 100,
      //             height: 100,
      //             decoration: BoxDecoration(color: Colors.amber),
      //           ),
      //           SizedBox(width: 20),
      //           Container(
      //             width: 100,
      //             height: 100,
      //             decoration: BoxDecoration(color: Colors.red),
      //           )
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Rezervasyon İçin Ara",
          style: TextStyle(fontSize: 16),
        ),
        extendedPadding: EdgeInsets.all(20),
        // extendedTextStyle: TextStyle(backgroundColor: Colors.grey),
        extendedIconLabelSpacing: 12,
        onPressed: () {},
        elevation: 0,
        splashColor: Colors.amber,
        icon: Icon(
          Icons.call,
          size: 30,
          color: Colors.black,
        ),
        backgroundColor: Colors.pink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.grey.shade700,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  // QR ödeme sayfası
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => PaymentPage()),
                  // );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentOptions()),
                  );
                },
                child: Text(
                  "Pay The Money",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: kBackgroundColor,
          ),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 10),
                FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Utku !",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Discover the Beautiful Word!!",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                FractionallySizedBox(
                  widthFactor: 0.9,
                  child: TextField(
                    style: TextStyle(
                      decorationColor: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.mic),
                        onPressed: () {
                          print("Microfona tıklandı");
                        },
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                    ),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print("See all tıklandı");
                            },
                            child: Text(
                              "See All >",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            categoryBuild(
                              colorx: Colors.amber,
                              textx: "Dinner",
                              icon: Icons.dining_rounded,
                            ),
                            SizedBox(width: 12),
                            categoryBuild(
                                colorx: Colors.blue,
                                textx: "Hotel",
                                icon: Icons.hotel),
                            SizedBox(width: 12),
                            categoryBuild(
                              colorx: Colors.red,
                              textx: "Cook",
                              icon: Icons.dining_rounded,
                            ),
                            SizedBox(width: 12),
                            categoryBuild(
                                colorx: Colors.black,
                                textx: "Beach",
                                icon: Icons.hotel),
                            SizedBox(width: 12),
                            categoryBuild(
                                colorx: Colors.black,
                                textx: "Bars",
                                icon: Icons.hotel),
                            SizedBox(width: 12),
                            categoryBuild(
                                colorx: Colors.black,
                                textx: "Culture",
                                icon: Icons.cabin),
                            SizedBox(width: 12),
                            categoryBuild(
                              colorx: Colors.pink,
                              textx: "Worship",
                              icon: Icons.call_merge_outlined,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Place near you",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            print("See all tıklandı");
                          },
                          child: Text(
                            "See All >",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        imgContainer(url: "assets/icons/otel.jpg", fiyat: 80),
                        SizedBox(width: 10),
                        imgContainer(
                            url: "assets/icons/otelodasi.jpg", fiyat: 90),
                        SizedBox(width: 10),
                        imgContainer(url: "assets/icons/deniz.jpg", fiyat: 100),
                        SizedBox(width: 10),
                        imgContainer(url: "assets/icons/bardak.jpg", fiyat: 99),
                      ],
                    ),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          AspectRatio(
                            aspectRatio: 2 / 1.5,
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          AspectRatio(
                            aspectRatio: 2 / 1.5,
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container imgContainer({required String url, required double fiyat}) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        right: 10,
        left: 10,
      ),
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.blue,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: AssetImage(url),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Orman Ev Oteli, Hatay",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            " (20 Review)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "$fiyat TL",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container categoryBuild({
    required Color colorx,
    required String textx,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colorx,
      ),
      width: 130,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.white,
            ),
            Text(textx,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
          ],
        ),
      ),
    );
  }
}

/*

Row(
                        children: [
                          categoryBuild(
                            colorx: Colors.amber,
                            textx: "Dinner",
                            icon: Icons.dining_rounded,
                          ),
                          SizedBox(width: 12),
                          categoryBuild(
                              colorx: Colors.blue,
                              textx: "Hotel",
                              icon: Icons.hotel),
                        ],
                      ),

 */

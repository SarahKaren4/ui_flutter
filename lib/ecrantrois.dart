// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uxui/main.dart';

class HomesThree extends StatefulWidget {
  const HomesThree({super.key});

  @override
  State<HomesThree> createState() => _HomesThreeState();
}

class _HomesThreeState extends State<HomesThree> {
  @override
  Widget build(BuildContext context) {
    const lightgrey = const Color(0xFFF1F4F6);
    const lightBlue = const Color(0xffb0d5ee);
    const darkBlue = const Color(0xff284059);
    const lightRed = const Color(0xffe04f59);
    const ligth = const Color(0xfff5f3eb);
    List<Color> couleurs = [lightgrey, lightBlue, darkBlue, lightRed, ligth];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: 0,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.home,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.heart,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.cartShopping,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.percent,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.person,
                color: Colors.black,
              ),
              label: "")
        ],
      ),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:   Container(
          padding: EdgeInsets.only(left: 5),
          child: Text.rich(TextSpan(text: 'Hello Azelea 👋\n', style: TextStyle(
            color: Colors.black,
          ), children: <InlineSpan>[
            TextSpan(
              text: 'It\' time to lunch',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w100),
            )
          ])),
        ),

        //iconTheme: ,
        actions: [
          Container(
              padding: EdgeInsets.only(right: 10),
              height: 30,
              width: 30,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/img.jpg')),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 20),
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xC6DDEFFF),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: null,
                            icon: FaIcon(
                              FontAwesomeIcons.locationPin,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 25),
                            child: Column(
                              children: [
                                Text('Your delivery adress'),
                                Text('Bla bla bla bla')
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: null,
                            icon: FaIcon(
                              FontAwesomeIcons.arrowRight,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 20,
                      ),
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 20),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Category',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'See All',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orangeAccent),
                              ),
                            ],
                          ),
                        ],
                      ))),
              Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: couleurs[index],
                        height: 70,
                        width: 160,
                        margin: EdgeInsets.only(left: 10),
                        child: Stack(children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('Salade',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 35),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: (Image(
                                image: AssetImage("assets/img.png"),
                              )),
                            ),
                          ), //want to fixed widget when keyboard will appear
                        ]),
                      );
                    }),
              ),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 20,
                      ),
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 20),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Column(
                              //   children: [
                              //     // Text(
                              //     //   'Nearby food',
                              //     //   style: TextStyle(
                              //     //       fontSize: 22,
                              //     //       fontWeight: FontWeight.bold),
                              //     // ),
                              //     //
                              //    // FaIcon(FontAwesomeIcons.magnifyingGlass, size: 10,)
                              //   ],
                              // ),
                              Text.rich(TextSpan(text: 'Nearby\n', style: TextStyle(
                                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold
                              ),
                                  children: <InlineSpan>[

                                    WidgetSpan(
                                      child: Container(
                                          padding:EdgeInsets.only(left:25, top:2),
                                          child: FaIcon(FontAwesomeIcons.locationPin, size: 15,))

                                    ),
                              ])),
                              Text(
                                'See All',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orangeAccent),
                              ),
                            ],
                          ),
                        ],
                      ))),
              Expanded(
                flex: 3,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        //  clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          height: 130,
                          width: 222,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/img.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                  IconButton(
                                      onPressed: null,
                                      icon: FaIcon(
                                        FontAwesomeIcons.star,
                                        color: Colors.red,
                                      )

                                      //Icon(Icons.star, color: Colors.red)),
                                      )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 1),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Nom du plat',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('8.9'),
                                        IconButton(
                                          icon: FaIcon(
                                            FontAwesomeIcons.heart,
                                            color: Colors.red,
                                          ),
                                          onPressed: () {},

                                          //Icons.heart_broken,color: Colors.red,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        //margin: EdgeInsets.all(10),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      //Five elements
    );
  }
}

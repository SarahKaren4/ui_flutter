// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomesOne extends StatefulWidget {
  const HomesOne({super.key});

  @override
  State<HomesOne> createState() => _HomesOneState();
}

class _HomesOneState extends State<HomesOne> {
  @override
  Widget build(BuildContext context) {
    const lightgrey = const Color(0xFFF1F4F6);
    const lightBlue = const Color(0xffb0d5ee);
    const darkBlue = const Color(0xff284059);
    const lightRed = const Color(0xffe04f59);
    const ligth = const Color(0xfff5f3eb);
    List<Color> couleurs = [lightgrey, lightBlue, darkBlue, lightRed, ligth];

    return Scaffold(
        appBar: AppBar(
          leading: Container(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Welcome to Flutter',
          ),
          elevation: 0,
          //iconTheme: ,
          actions: [
            Container(
              padding: EdgeInsets.only(right: 20),
              child: FaIcon(
                FontAwesomeIcons.star,
                color: Colors.black,
              )
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.red, Colors.orangeAccent],
                //radius: 0.75,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 7),
                            child: Container(
                              child:  Text(
                                "Grilled Beef Steak with Sauce ABC",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height>860?30:15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                          //checkothers == true ? extraNews(context) : Container()
                          Row(
                            children:  [
                              Text(
                                'By resto Parmato Bapo',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height>860?14:8,
                                  fontFamily: 'CeraThin',
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(left: 20, top: 5),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 70,
                                  height:MediaQuery.of(context).size.height>860?30:20,
                                  child: DecoratedBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text('4.8')
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        // color: Colors.red,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.grey)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 70,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                height: MediaQuery.of(context).size.height>860?30:22,
                                child: DecoratedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.only(left: 7),
                                          child: Icon(
                                            Icons.motorcycle,
                                            color: Colors.lightBlueAccent,
                                          )),
                                      Text('20 min ')
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      // color: Colors.red,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey)),
                                ),
                              ),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 15),
                              Container(
                                height: MediaQuery.of(context).size.height / 8,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)),
                                width: MediaQuery.of(context).size.width / 8,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              "assets/img.png",
                              height: MediaQuery.of(context).size.height / 2,
                              width: 280,
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65),
                              bottomRight: Radius.circular(65))),
                      padding: const EdgeInsets.only(left: 25, top: 2),
                      //width: MediaQuery.of(context).size.width,
                      //color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              "Description",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 20, top: 3),
                                child: const Text(
                                  'Amet minim molit non deserunt uliamcoest sit oliqua dolor do amet sint. Velit officia consat du veniam consequat conseqtures adipsing content. Read more',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'CeraThin',
                                      color: Color.fromARGB(255, 64, 57, 57)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      // decoration: BoxDecoration(color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '2 items',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '19,24',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            onPressed: () {},
                            child: Icon(Icons.shop_2),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}

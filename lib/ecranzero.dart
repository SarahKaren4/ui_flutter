// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Homes extends StatefulWidget {
  const Homes({super.key});

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
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
          backgroundColor: Colors.white,
          title: const Text(
            'Welcome to Flutter',
          ),
          //iconTheme: ,
          actions: [
            const CircleAvatar(
                radius: 20,
                child:
                IconButton(onPressed: null, icon: Icon(Icons.menu)) //Text
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Expanded(
                  // flex: 3,
                    child: Container(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Hello Wendy',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'CeraThin',
                                    color: Color.fromARGB(255, 64, 57, 57)),
                              ),
                            ],
                          ),
                          Container(
                            width: 300,
                            child: const Text(
                              "Your projects (4)",
                              style: TextStyle(fontSize: 55),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                              height: MediaQuery.of(context).size.height / 3,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  var a = couleurs;
                                  print(a[index]);
                                  return Container(
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(206, 164, 72, 0.122),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(7))),
                                    height: 100,
                                    width:
                                    MediaQuery.of(context).size.width * 2 / 3,
                                    //color: Colors.amber,
                                    margin: const EdgeInsets.only(right: 12),
                                    padding: const EdgeInsets.all(13),

                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              // ignore: prefer_const_constructors
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black,
                                              ),
                                              child: const IconButton(
                                                  onPressed: null,
                                                  icon: Icon(
                                                    Icons.upcoming,
                                                    color: Colors.white,
                                                  )),
                                            ),
                                            Container(
                                              // padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.transparent,
                                                  border: Border.all(
                                                      color: Colors.green,
                                                      width: 1)),
                                              child: const IconButton(
                                                  onPressed: null,
                                                  icon: Icon(
                                                      Icons.ac_unit_sharp)) //Text
                                              ,
                                            )
                                          ],
                                        ),
                                        // const SizedBox(
                                        //   height: 50,
                                        // ),
                                        Spacer(
                                          flex: 5,
                                        ),
                                        Container(
                                          child: const Text(
                                            "Admin Dashboard",
                                            style: TextStyle(
                                                fontSize: 38,
                                                fontFamily: 'CeraRegular',
                                                color: Color.fromARGB(
                                                    255, 64, 57, 57)),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,

                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            const IconButton(
                                                onPressed: null,
                                                icon: Icon(
                                                    Icons.ac_unit_sharp)) //Text
                                            ,

                                            IconButton(
                                                onPressed: null,
                                                icon: Icon(
                                                    Icons.ac_unit_sharp)) //Text
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                                itemCount: couleurs.length,
                              ))
                        ],
                      ),
                    )),
/*
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.black26,
                    )),
                    */
              ],
            ),
          ),
        ));
  }
}

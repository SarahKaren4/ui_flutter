// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class HomesTwo extends StatefulWidget {
  const HomesTwo({super.key});

  @override
  State<HomesTwo> createState() => _HomesTwoState();
}

class _HomesTwoState extends State<HomesTwo> {
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
              child: const IconButton(
                  onPressed: null, icon: Icon(Icons.menu)) //Text
              ),
        ],
      ),
      body: SafeArea(
        child: Container(
          //decoration: BoxDecoration(color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  child: Form(
                child: Container(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: const Text('Searchbar')),
              )),
              Flexible(
                  child: Column(
                children: [
                  Row(
                    children: [
                      const Text('Choose category',
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.menu,
                            size: 50,
                          )),
                      const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.menu,
                            size: 50,
                          )),
                      const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.menu,
                            size: 50,
                          )),
                      const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.menu,
                            size: 50,
                          )),

                      //Text
                    ],
                  ),
                ],
              )),
              Flexible(
                  child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(206, 164, 72, 0.122),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    // height: 100,
                    width: MediaQuery.of(context).size.width * 2 / 3,
                    //color: Colors.amber,
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.all(13),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ],
                        ),
                        // const SizedBox(
                        //   height: 50,
                        // ),

                        Container(
                          child: const Text(
                            "Admin Dashboard",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'CeraRegular',
                                color: Color.fromARGB(255, 64, 57, 57)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )),
              const Flexible(child: Text(''))
            ],
          ),
        ),
      ),
      //Five elements
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.window),
            label: 'Business',
          ),
        ],
        // currentIndex: null,
        selectedItemColor: Colors.amber[800],
        onTap: null,
      ),
    );
  }
}

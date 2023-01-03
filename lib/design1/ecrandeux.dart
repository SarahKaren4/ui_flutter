// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomesTwo extends StatefulWidget {
  const HomesTwo({super.key});

  @override
  State<HomesTwo> createState() => _HomesTwoState();
}

class _HomesTwoState extends State<HomesTwo> {
  @override
  Widget build(BuildContext context) {
    const lightgrey = const Color(0xFF06F4F6);
    const lightBlue = const Color(0xffb0d5ee);
    const darkBlue = const Color(0xff284059);
    const lightRed = const Color(0xffe04f59);
    const ligth = const Color(0xfff5f3eb);
    List<Color> couleurs = [lightgrey, lightBlue, darkBlue, lightRed, ligth];
    String dropdownvalue = 'Bacamga, Samit';
    var items1 = [
      'Sarah',
      'Karen',
      'Bacamga, Samit',
    ];
    var color = couleurs;
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Text(
                'Delivery',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),

            DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items1.map((String items1) {
                  return DropdownMenuItem(
                    value: items1,
                    child: Container(
                       // padding: EdgeInsets.only(left: 20),
                        child: Text(items1, style: TextStyle(fontSize: 15),)),
                  );
                }).toList(),
                onChanged: (String? selectedValue) {
                  setState(() {
                    dropdownvalue = selectedValue!;
                  });
                }) ],
        ),
        //iconTheme: ,
        actions: [
          Container(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.height/60),
              height: 50.h,
              width: 50.w,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/img.jpg')),
        ],
      ),
      body: SafeArea(
        child: Container(
          //decoration: BoxDecoration(color: Colors.black),
          padding: EdgeInsets.only(left: 3.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  flex: 1,
                  child: Form(
                    child: Container(
                        margin: EdgeInsets.only(right: 15.w),
                        padding: const EdgeInsets.only(top: 5, bottom: 10).h,
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Container(
                              padding: EdgeInsets.only(left: 10.w),
                              child: FaIcon(
                                FontAwesomeIcons.search, size:15
                              ),
                            ),
                            hintText: '| What would you like to eat?',
                            enabledBorder: InputBorder.none,
                          ),
                        )),
                  )),
              //SizedBox(height: 10,),
              Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 7.r, bottom: 25.r),
                            child: const Text('Choose category',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Flexible(
                        flex:1,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/img.jpg',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  Container(
                                     // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/90),
                                      child: Text('Main'))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/img.jpg',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  Container(
                                     // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/90),
                                      child: Text('Appetizer'))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/img2.jpg',
                                    height: 20.h,
                                  ),
                                  Container(
                                      //padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/90),
                                      child: Text('Drinks'))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/img2.jpg',
                                    height: 20.h,
                                  ),
                                  Container(
                                     // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/90),
                                      child: Text('Dessert'))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/60, right: MediaQuery.of(context).size.width/60),
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/75, top: MediaQuery.of(context).size.height/75,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(
                        'Main course',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.sp),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                      //height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.only(left: 10, right: 10).w,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 0.9),
                          itemCount: couleurs.length,
                          itemBuilder: ((context, index) => Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    // color: couleurs[index].color,
                                    color: couleurs[index],
                                    borderRadius: BorderRadius.circular(10.r)),
                                /*
                                child: Column(
                                  children: [
                                    Row(
                                      children: [Text('Salade')],
                                    ),
                                    Stack(
                                      children: const <Widget>[
                                        Positioned(
                                          bottom: 10,
                                          right:10,
                                          child: (Image(
                                            image: AssetImage("assets/img.jpg"),
                                          )),
                                        )
                                      ],
                                    ), ],
                                ),
                            */
                            child: Stack(
                                children:[
                                  Container(
                                      padding: EdgeInsets.all(MediaQuery.of(context).size.height/30),
                                      child: Text('Salade', style: TextStyle(fontWeight: FontWeight.bold)), ),
                                  Container(
                                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/12),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: (Image(image: AssetImage("assets/img.png"),)),
                                    ),
                                  ),//want to fixed widget when keyboard will appear

                                ]
                            ),
                              )))))
            ],
          ),
        ),
      ),
    );
  }
}




/*

            */
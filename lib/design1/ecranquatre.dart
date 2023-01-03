// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomesQuatre extends StatefulWidget {
  const HomesQuatre({super.key});

  @override
  State<HomesQuatre> createState() => _HomesQuatreState();
}

class _HomesQuatreState extends State<HomesQuatre> {
  @override
  Widget build(BuildContext context) {
    const lightgrey = const Color(0xFF06F4F6);
    const lightBlue = const Color(0xffb0d5ee);
    const darkBlue = const Color(0xff284059);
    const lightRed = const Color(0xffe04f59);
    const ligth = const Color(0xfff5f3eb);

    var bottombar = ScreenUtil().bottomBarHeight;
    var statusbar = ScreenUtil().statusBarHeight;
    var appbar = AppBar().preferredSize.height;
    var bodysize = 1.sh - (bottombar + appbar);
    var bodysizeMinusBottombar = 1.sh - appbar;
    //Taille ecran : screensize -(app bar + status bar )

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,

          //iconTheme: ,
        ),
        body: ListView(
          padding: EdgeInsets.all(26).w,
          children: <Widget>[
            Container(
              color: Colors.lightBlueAccent,
              height: (1.sh < 867) ? (1.sh - (appbar + statusbar + 52)) : 14,
              //  height: (1.sh -170),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category',
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Featured',
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.orangeAccent),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.only(bottom: 500.h) ,
                    //margin: EdgeInsets.all(10).w,
                    height: bodysize / 3.h, // RETIRER LE PADDING
                    color: Colors.amber[600],
                    child: const Center(child: Text('A')),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'List of food',
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.orangeAccent),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 500.h),
                    //margin: EdgeInsets.all(10).w,
                    height: bodysize / 5.h,
                    color: Colors.amber[600],
                    child: const Center(child: Text('B')),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hottest Items',
                    style:
                        TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 500.h),
              //margin: EdgeInsets.all(10).w,
              height: bodysize / 5.h,
              color: Colors.amber[600],
              child: const Center(child: Text('B')),
            ),
            Container(
              padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hottest Items',
                    style:
                        TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 500.h),
              //margin: EdgeInsets.all(10).w,
              height: bodysize / 5.h,
              color: Colors.amber[600],
              child: const Center(child: Text('B')),
            ),
          ],
        ));
  }
}

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../statics/static.dart';

class TestScreen3 extends StatefulWidget {
  const TestScreen3({Key? key}) : super(key: key);

  @override
  State<TestScreen3> createState() => _TestScreen3State();
}

class _TestScreen3State extends State<TestScreen3> {
  var appBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Container(
          padding: EdgeInsets.only(left: 10.w, top: 15.h),
          child: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          )),
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 5.h),
        child: Text(
          'Book a table',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ));
  //iconTheme: ,

  @override
  Widget build(BuildContext context) {
    double paddingH = 30.w;
    double paddingV = 20.h;
    print(1.sw);
    print(1.sh);
    double appBarHeight = appBar.preferredSize.height;
    double statusBarHeight = ScreenUtil().statusBarHeight;
    double paddingTop = MediaQuery.of(context).padding.top;
    double bodyHeight = 1.sh - appBarHeight - ScreenUtil().statusBarHeight;
    print(appBarHeight);
    print(statusBarHeight);
    print(paddingTop);
    print(bodyHeight);
    var path = Path();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  /*
                  Container(
                    height: (1.sh < 932) ? bodyHeight - 40 : 460.h,
                    width: 411.w,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(15.r))),
                  ),
                 */
                  Container(
                    height: 90.h,
                    width: 411.w,
                    decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 101, 105, 113).withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(15.r))),
                    child: CustomPaint(
                      painter: CurvePainter(),
                      child: Text('fffffdff'),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: bodyHeight * 0.45.h,
                    width: 411.w,
                    decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 15, 135, 113).withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(15.r))),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                      height: 40.h,
                      width: 411.w,
                      decoration: BoxDecoration(
                          // color: Colors.blueAccent.withOpacity(0.3),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.r))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: FaIcon(FontAwesomeIcons.table),
                              ),
                              Text(
                                " Seats: 4 | Table No. 6",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: FaIcon(FontAwesomeIcons.play),
                              ),
                              Text(
                                " Watch Table poqition",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      )),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          height: 50.h,
                          width: 411.w,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.r))),
                          child: Center(
                              child: Text(
                            'Add to cart',
                            style: TextStyle(
                                fontSize: littleHeadersFontSize,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ), /*ElevatedButton(
                      onPressed: (){
                      },
                      child: Text("Button", style: TextStyle(color: Colors.black, fontFamily: 'ceraBold', fontSize: 15.sp),),
                    )*/
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint.color = Colors.green;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 16;

    var startPoint = Offset(0, size.height / 1.2);
    var controlPoint1 = Offset(size.width / 4, size.height / 3);
    var controlPoint2 = Offset(3 * size.width / 4, size.height / 3);
    var endPoint = Offset(size.width, size.height / 1.2);

    var path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


/**
 * body: SafeArea(
        child: CustomPaint(
          painter: CurvePainter(),
          child: Container(),
        ),
      ),
 */

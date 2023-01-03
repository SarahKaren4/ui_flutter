import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../statics/static.dart';

class TestScreen2 extends StatefulWidget {
  //const TestScreen2({Key? key}) : super(key: key);
  const TestScreen2({super.key, required this.image});

  final String image;

  @override
  State<TestScreen2> createState() => _TestScreen2State();
}

class _TestScreen2State extends State<TestScreen2> {
  var appBar = AppBar(
    backgroundColor: Colors.green,
    centerTitle: false,
    automaticallyImplyLeading: false,
    elevation: 0,
    toolbarHeight: 80,
    title: FaIcon(FontAwesomeIcons.arrowLeftLong),
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 28, right: 20),
        child: FaIcon(
          FontAwesomeIcons.heart,
          color: Colors.white,
        ),
      )
    ],
  );
  var selectedIndex;
  var colorCont; // move color outside build scope
  var txt = "d";
  changes(index) {
    setState(() {
      // txt = "sarah";

      selectedIndex = index;
      //txt = selectedIndex == index ? index.toString() : "ddd";
      colorCont = selectedIndex == index ? Colors.green : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    const lightgrey = const Color(0xFFF1F4F6);
    const lightBlue = const Color(0xffb0d5ee);
    const darkBlue = const Color(0xff284059);
    const lightRed = const Color(0xffe04f59);
    const ligth = const Color(0xfff5f3eb);
    List<Color> couleurs = [lightgrey, lightBlue, darkBlue, lightRed, ligth];
    Color bgcolor = Colors.red;

    List<String> pizzaSize = ["Small", "Medium", "Large"];
    final size = MediaQuery.of(context).size;
    //String selected = "first";

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
    //Test

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: appBar,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                          height: 30, color: Color.fromRGBO(76, 175, 80, 1))),
                  Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20).r,
                        height: size.height,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: SingleChildScrollView(
                          child: Column(children: [
                            SizedBox(
                              height: size.height / 6.h,
                            ),
                            Text(
                              'Melting Cheese Pizza',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '🍕Pizza Italiana',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "🕓 15 min  ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.star,
                                  size: 15,
                                  color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  width: 9.w,
                                ),
                                Text(
                                  '4.8 ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  '(2.2k Reviews) >',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10).w,
                              height: 100.h,
                              width: size.width.w,
                              child: ListView.builder(
                                itemCount: 3,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      changes(index);
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10)
                                              .w,
                                      height: 100.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: selectedIndex == index
                                                  ? Colors.green
                                                  : Colors.grey,
                                              width: selectedIndex == index
                                                  ? 4
                                                  : 1),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Icon(Icons.circle_outlined,
                                              color: selectedIndex == index
                                                  ? Colors.green
                                                  : Colors.grey),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(pizzaSize[index]),
                                        ),
                                        Text(
                                          "\$9.99",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        )
                                      ]),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ReadMoreText(
                                  'Melting cheese pizza making with extra virgin olive oil, Commeal beef/ chicken, Tomato sauce (smooth or pureed), Firm mozza, 100gm onion, 70 gm chopped capsicum. Melting cheese pizza making with extra virgin ovlive oil, Commeal beef/ chicken, Tomato sauce (smooth or pureed), Firm mozza, 100gm onion, 70 gm chopped capsicum ',
                                  style: TextStyle(height: 1.4),
                                  trimLines: 3,
                                  colorClickableText: Colors.pink,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'More',
                                  trimExpandedText: 'Less',
                                  textAlign: TextAlign.center,
                                  preDataTextStyle: TextStyle(height: 2),
                                  moreStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                          left: 12, top: 33, bottom: 35)
                                      .w,
                                  child: Text(
                                    "Total: \$12.99",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18).w,
                                  child: Row(
                                    children: [
                                      Container(
                                          height: 22.h,
                                          width: 23.w,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2, vertical: 2),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: FaIcon(FontAwesomeIcons.plus)),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text('1'),
                                      ),
                                      Container(
                                          height: 22.h,
                                          width: 23.w,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2, vertical: 2),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child:
                                              FaIcon(FontAwesomeIcons.minus)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Container(
                                    height: 50.h,
                                    width: 411.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.r))),
                                    child: Center(
                                        child: Text(
                                      'Next',
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
                          ]),
                        ),
                      )),
                ],
              ),
              Align(
                alignment: Alignment(0.0, -1.03),
                child: Container(
                  width: size.width * 0.4,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                    child: Card(
                      // with Card
                      child: Image.asset(widget.image),
                      elevation: 18.0,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                    ),
                  ),

                  /* ClipRRect(
                    borderRadius: BorderRadius.circular(120.0),
                    child: Image.asset("assets/pizza.png"))
                    */
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(height: 30, color: Colors.green)),
                  Expanded(
                      flex: 10,
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                      )),
                ],
              ),
              Align(
                alignment: Alignment(0.0, -1.03),
                child: Container(
                  width: size.width * 0.4,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                    child: Card(
                      // with Card
                      child: Image.asset("assets/pizza.png"),
                      elevation: 18.0,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                    ),
                  ),

                  /* ClipRRect(
                        borderRadius: BorderRadius.circular(120.0),
                        child: Image.asset("assets/pizza.png"))
                        */
                ),
              ),
            ],
          ),
     
*/




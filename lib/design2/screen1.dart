import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uxui/design2/screen2.dart';

import '../statics/static.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  var appBar = AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      automaticallyImplyLeading: false,
      elevation: 0,
      toolbarHeight: 80,
      title: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Hans 👋",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'ceraBold',
                      fontSize: 30.sp),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 40.sp,
                    ))
              ],
            ),
            Text(
              "It's lunch time!",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ceraLight',
                  fontSize: 17.sp),
            ),
          ],
        ),
      ));

  List<String> images = [
    "assets/paizza1.png",
    "assets/pizza.png",
    "assets/paizza1.png",
    "assets/pizza.png",
    "assets/paizza1.png",
    "assets/pizza.png",
    "assets/paizza1.png"
  ];
  @override
  Widget build(BuildContext context) {
    const lightgrey = const Color(0xFFF1F4F6);
    const lightBlue = const Color(0xffb0d5ee);
    const darkBlue = const Color(0xff284059);
    const lightRed = const Color(0xffe04f59);
    const ligth = const Color(0xfff5f3eb);
    List<Color> couleurs = [lightgrey, lightBlue, darkBlue, lightRed, ligth];

    List<String> foods = ["Meat", "Fast Food", "Sushi", "Drinks", "blank"];

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: paddingH, vertical: 20),
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
                    height: 60.h,
                    width: 411.w,
                    decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 101, 105, 113).withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(15.r))),
                    child: TextFormField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.only(
                          top: 20), // add padding to adjust text
                      isDense: true,
                      hintText: "Search",
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                            bottom: 5), // add padding to adjust icon
                        child: Icon(
                          Icons.search,
                          size: 25,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(
                            bottom: 5), // add padding to adjust icon
                        child: Icon(
                          Icons.toll_rounded,
                          size: 25,
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: 100.h,
                    width: 411.w,
                    decoration: BoxDecoration(
                        //color: Color.fromARGB(255, 15, 135, 113).withOpacity(0.3),
                        ),
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              // color: couleurs[index],
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 5.h,
                            width: 75.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/paizza1.png',
                                  height: 60,
                                  width: 70,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  (foods[index]),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          );
/*
                          return Container(
                            color: couleurs[index],
                            height: 70,
                            width: 160,
                            margin: EdgeInsets.only(left: 10),
                            child: Stack(children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text('Salade',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height /
                                        35),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: (Image(
                                    image: AssetImage("assets/img.png"),
                                  )),
                                ),
                              ), //want to fixed widget when keyboard will appear
                            ]),
                          );
                     */
                        }),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: 290.h,
                    width: 411.w,
                    padding: EdgeInsets.only(top: 15.h, bottom: 20.h),
                    decoration: BoxDecoration(
                        //  color: Colors.blueAccent.withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(15.r))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular items',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            ),
                            Text(
                              'See All',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 280,
                          width: 500,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 220,
                                  decoration: BoxDecoration(
                                    // color: Colors.amber,
                                    border: Border.all(
                                        color: Colors.green, width: 1),
                                    //border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  //height: 150.h,
                                  //width: 75.w,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Melting Cheese Pizza',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('\$ 9.99',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TestScreen2(image: images[index]),
          ),
        );
                                        },
                                        child: Image.asset(
                                          images[index],
                                          height: 100,
                                          width: 170,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '🔥44 calories',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '⏱️ 20 min      ',
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          Container(
                                              height: 30.h,
                                              width: 30.w,
                                              padding: EdgeInsets.only(
                                                  top: 5, left: 6, right: 2),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Colors.white),
                                              child: FaIcon(
                                                  FontAwesomeIcons.bagShopping))
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          height: 55.h,
                          width: 411.w,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.r))),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 13),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cart',
                                      style: TextStyle(
                                          fontSize: littleHeadersFontSize,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      '2 items',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        'assets/pizza.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        'assets/paizza1.png',
                                        height: 30.4,
                                        width: 30.4,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
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

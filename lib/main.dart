import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'design1/ecrandeux.dart';
import 'design1/ecranquatre.dart';
import 'design1/ecranun.dart';
import 'design1/ecranzero.dart';
import 'design2/screen1.dart';
import 'design2/screen2.dart';
import 'design2/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        print(1.sh);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme

          theme: ThemeData(
            fontFamily: 'CeraRegular',
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const TestScreen(),
    );
  }
}

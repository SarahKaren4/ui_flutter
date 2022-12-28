
import 'package:flutter/material.dart';
import 'package:uxui/ecranun.dart';

import 'ecranzero.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'CeraRegular',
      ),
      home: HomesOne(),
    );
  }
}

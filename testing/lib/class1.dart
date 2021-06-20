import 'package:flutter/material.dart';
import 'package:testing/class2.dart';
class class1 extends StatelessWidget {
  const class1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      
    );
  }
}
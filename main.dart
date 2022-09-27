import 'package:flutter/material.dart';
import 'package:fristproject/apirespository.dart';

import 'home_page.dart';
void main(){
  ApiRepository();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

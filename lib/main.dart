import 'package:flutter/material.dart';
import 'package:untitled4/counter_screen.dart';
import 'package:untitled4/home_screen.dart';
import 'package:untitled4/login_screen.dart';

import 'package:untitled4/users_screen.dart';

import 'messanger_screen.dart';

void main() {
  runApp(MyApp());


}

//statless
//stateful
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CounterScreen(),
    );}

}


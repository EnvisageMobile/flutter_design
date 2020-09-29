

import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final routes=<String,WidgetBuilder>{
    Login.tag:(context)=>Login()
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'lato',
      ),
      home: Login(),
      routes: routes,
    );
  }
}






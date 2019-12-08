import 'package:flutter/material.dart';

import 'Pages/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alccol ou Gasolina',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Home(),
    );
  }
}

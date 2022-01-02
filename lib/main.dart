import 'package:flutter/material.dart';
import 'package:iset/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emploi isetso',
      theme: ThemeData(primaryColor: Colors.blueAccent[100] ),
      home: const Splash() ,
    );
  }
}
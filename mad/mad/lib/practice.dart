// lib/main.dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAD Midterm Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(child: Text('Hello Flutter')),
      ),
    );
  }
}

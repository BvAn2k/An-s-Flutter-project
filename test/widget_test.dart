// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test1234/main.dart';

void main() {
  runApp(const MaterialApp(

    home: SafeArea(child: Scaffold(
      body:Myon() ,
    )),
    debugShowCheckedModeBanner: false,
  ));
}
class Myon extends StatelessWidget {

  const Myon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('to do list'),),
    );
  }
}
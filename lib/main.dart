// ignore_for_file: prefer_const_constructors, unused_import

import 'package:bmi_app/app_view.dart';
import 'package:bmi_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  app_view(),
        'result':(context)=> result_view(),
      },
    );
  }
}

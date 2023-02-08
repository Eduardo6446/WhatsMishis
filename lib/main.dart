import 'package:flutter/material.dart';

import 'homeApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsMishis',
      theme: ThemeData(

        primaryColor: new Color(0xff075E54), 
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: new Color(0xff25D366)),

      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}


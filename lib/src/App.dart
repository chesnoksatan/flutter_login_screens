import 'package:flutter/material.dart';

import 'package:login_screens/src/Routes.dart';

import 'package:login_screens/src/Neumorphic/Page.dart';
import 'package:login_screens/src/Modern/Page.dart';
import 'package:login_screens/src/Modal/Page.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application for training my skills',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NeumorphicPage(),
      routes: {
        Routes.Neumorphic: (context) => const NeumorphicPage(),
        Routes.Modern: (context) => const ModernPage(),
        Routes.Modal: (context) => const ModalPage(),
      },
    );
  }
}
import 'package:flutter/material.dart';

import 'package:login_screens/src/Routes.dart';

class ModernPage extends StatelessWidget {
  const ModernPage({Key? key}) : super(key: key);
  static const String routeName = '/Modern';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () { Navigator.pushReplacementNamed(context, Routes.Neumorphic); },
          child: Container(
            color: Colors.yellow.shade600,
            padding: const EdgeInsets.all(8),
            // Change button text when light changes state.
            child: const Text('Neumorphic'),
          ),
        )
      ),
    );
  }
}
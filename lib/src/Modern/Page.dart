import 'package:flutter/material.dart';

import 'package:login_screens/src/Routes.dart';
import 'package:login_screens/src/Modern/Background.dart';

import 'package:login_screens/src/Modern/PasswordField.dart';
import 'package:login_screens/src/Modern/EmailField.dart';

class ModernPage extends StatelessWidget {
  const ModernPage({Key? key}) : super(key: key);
  static const String routeName = '/Modern';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.transparent,
        child: Stack(
          children: [
            Background(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: EmailField(),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: PasswordField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () { Navigator.pushReplacementNamed(context, Routes.Modal); },
                      child: Container(
                        width: 400,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.orange[400],
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: const Center(
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'IBMPlex',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
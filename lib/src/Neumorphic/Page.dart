import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:login_screens/src/Neumorphic/SocialButton.dart';
import 'package:login_screens/src/Neumorphic/EmailField.dart';
import 'package:login_screens/src/Neumorphic/PasswordField.dart';

import 'package:login_screens/src/Routes.dart';

class NeumorphicPage extends StatelessWidget {
  const NeumorphicPage({Key? key}) : super(key: key);
  static const String routeName = '/Neumorphic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFE6EEF8),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  color: Color(0xFF546E7A),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'IBMPlex',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.all(20), child: SocialButton(SocialIcon.Facebook),),
                Padding(padding: const EdgeInsets.all(20), child: SocialButton(SocialIcon.Twitter),),
                Padding(padding: const EdgeInsets.all(20), child: SocialButton(SocialIcon.Google),),
              ],
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: EmailField(),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: PasswordField(),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () { Navigator.pushReplacementNamed(context, Routes.Modern); },
                child: Container(
                  width: 56 * 3,
                  height: 56,
                  decoration: const BoxDecoration(
                    color: Color(0xFF9574CD),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xAFA6ABBD),
                        blurRadius: 10,
                        offset: Offset(5, 5), // changes position of shadow
                      ),
                      BoxShadow(
                        color: Color(0xFFFFFFFF),
                        blurRadius: 14,
                        offset: Offset(-5, -5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "Sign In",
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
            Column(
              children: const [
                Text(
                  "New here? Create account",
                  style: TextStyle(
                    color: Color(0xFF546E7A),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'IBMPlex',
                  ), // TODO: Hyper Link
                ),
                Text(
                  "Forgot your password?",
                  style: TextStyle(
                    color: Color(0xFF546E7A),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'IBMPlex',
                  ), // TODO: Hyper Link
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
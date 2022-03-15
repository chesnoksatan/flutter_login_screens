import 'package:flutter/material.dart';

import 'package:login_screens/src/Routes.dart';

import 'package:login_screens/src/Modal/EmailField.dart';
import 'package:login_screens/src/Modal/PasswordField.dart';

// TODO: implement resize
class CreateAccountSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: const BoxDecoration(
        color: Color(0xFFFFECAA),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Register",
                  style: TextStyle(
                    color: Color(0xFF1B1A40),
                    fontSize: 26,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                IconButton(onPressed: (){}, icon: const Icon(Icons.close)) // TODO: implement
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: EmailField(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: PasswordField("Password"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: PasswordField("Confirm Password"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: GestureDetector(
                onTap: () { Navigator.pushReplacementNamed(context, Routes.Neumorphic); },
                child: Container(
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Color(0xFF050522),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Color(0xFFFFDE69),
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:login_screens/src/Modal/CreateAccountSheet.dart';
import 'package:login_screens/src/Modal/LoginSheet.dart';

class ModalPage extends StatelessWidget {
  const ModalPage({Key? key}) : super(key: key);
  static const String routeName = '/Modal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050522),
      body: Column(
        children: [
          SvgPicture.asset(
            "assets/images/bg_sample.svg",
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              color: Color(0xFFEF5858),
              fontSize: 36,
              fontFamily: "Roboto"
            ),
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFF4F4F4),
              fontSize: 20,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w300,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            child: GestureDetector(
              onTap: () { showMaterialModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => CreateAccountSheet(),
              );
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFDE69),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: const Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Color(0xFF1B1A40),
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            child: GestureDetector(
              onTap: () { showMaterialModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => LoginSheet(),
              );
                },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                    color: Color(0xFF050522),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.fromBorderSide(BorderSide(color: Color(0xFFFFDE69), width: 2.0))
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xFFFFDE69),
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}
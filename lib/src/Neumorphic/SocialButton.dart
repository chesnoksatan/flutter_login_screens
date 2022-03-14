import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

enum SocialIcon {
  Facebook,
  Twitter,
  Google
}

class SocialButton extends StatelessWidget {

  SocialButton(this.iconType, {Key? key}) : super(key: key)
  {
    switch (iconType) {
      case SocialIcon.Facebook:
        assetName = assetsPath + "facebook.svg";
        break;
      case SocialIcon.Twitter:
        assetName = assetsPath + "google.svg";
        break;
      case SocialIcon.Google:
        assetName = assetsPath + "twitter.svg";
        break;
    }
  }
  final SocialIcon iconType;
  final String assetsPath = 'assets/icons/';
  late String assetName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 56,
        height: 56,
        // color: Colors.black12,
        decoration: const BoxDecoration(
          color: Color(0xFFE6EEF8),
          borderRadius: BorderRadius.all(Radius.circular(28)),
          boxShadow: [
            BoxShadow(
              color: Color(0xA0A6ABBD),
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
        child: Center(
          child: SvgPicture.asset(
            assetName,
            width: 32,
            height: 32,
          ),
        ),
      ),
    );
  }
}
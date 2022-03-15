import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RotatedBox(
          quarterTurns: 2,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              SimpleShadow(
                child: SvgPicture.asset(
                  "assets/images/wave-haikei_1.svg",
                  alignment: Alignment.bottomCenter,
                ),
                opacity: 1,
                color: Colors.black12,
                offset: Offset(5, 0),
                sigma: 7,
              ),
              SimpleShadow(
                child: SvgPicture.asset(
                  "assets/images/wave-haikei_2.svg",
                  alignment: Alignment.bottomCenter,
                ),
                opacity: 1,
                color: Colors.black54,
                offset: Offset(5, 0),
                sigma: 7,
              ),
              SimpleShadow(
                child: SvgPicture.asset(
                  "assets/images/wave-haikei_3.svg",
                  alignment: Alignment.bottomCenter,
                ),
                opacity: 1,
                color: Colors.black54,
                offset: Offset(5, 0),
                sigma: 7,
              ),
            ],
          ),
        ),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            SimpleShadow(
              child: SvgPicture.asset(
                "assets/images/wave-haikei_1.svg",
                alignment: Alignment.bottomCenter,
              ),
              opacity: 1,
              color: Colors.black12,
              offset: Offset(5, 0),
              sigma: 7,
            ),
            SimpleShadow(
              child: SvgPicture.asset(
                "assets/images/wave-haikei_2.svg",
                alignment: Alignment.bottomCenter,
              ),
              opacity: 1,
              color: Colors.black54,
              offset: Offset(5, 0),
              sigma: 7,
            ),
            SimpleShadow(
              child: SvgPicture.asset(
                "assets/images/wave-haikei_3.svg",
                alignment: Alignment.bottomCenter,
              ),
              opacity: 1,
              color: Colors.black54,
              offset: Offset(5, 0),
              sigma: 7,
            ),
          ],
        )
      ],
    );
  }
}
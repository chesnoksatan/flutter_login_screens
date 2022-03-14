import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFE6EEF8),
        borderRadius: BorderRadius.all(Radius.circular(14)),
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
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Email',
            hintStyle: TextStyle(
              color: Color(0xC0546E7A),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'IBMPlex',
            ),
          ),
          style: TextStyle(
            color: Color(0xFF546E7A),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'IBMPlex',
          ),
        ),
      ),
    );
  }
}
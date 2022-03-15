import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: const TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Color(0xFF050522), width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Color(0xFF050522), width: 2.0),
          ),
          floatingLabelStyle: TextStyle(
            color: Color(0xFF050522),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Roboto',
          ),
          labelText: 'Email',
          hintStyle: TextStyle(
            color: Color(0xC0546E7A),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Roboto',
          ),
        ),
        style: TextStyle(
          color: Color(0xFF546E7A),
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontFamily: 'Roboto',
        ),
      ),
    );
  }
}
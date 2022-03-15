import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: const TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Colors.orange, width: 1.0),
          ),
          floatingLabelStyle: TextStyle(
            color: Colors.orange,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'IBMPlex',
          ),
          labelText: 'Email',
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
    );
  }
}
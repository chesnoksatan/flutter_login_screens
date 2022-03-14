import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  State<PasswordField> createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField> {

  bool _obscureText = true;

  void toogleObscure()
  {
    _obscureText = !_obscureText;
    setState(() {});
  }

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: TextField(
          obscureText: _obscureText,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            suffixIcon: IconButton(
              color: const Color(0xFF9574CD),
              onPressed: () => toogleObscure(),
              icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            ),
            border: InputBorder.none,
            hintText: 'Password',
            hintStyle: const TextStyle(
              color: Color(0xC0546E7A),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'IBMPlex',
            ),
          ),
          style: const TextStyle(
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
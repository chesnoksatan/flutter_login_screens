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
      height: 48,
      child: TextField(
        obscureText: _obscureText,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          suffixIcon: IconButton(
            color: Colors.orange,
            onPressed: () => toogleObscure(),
            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Colors.orange, width: 1.0),
          ),
          floatingLabelStyle: const TextStyle(
            color: Colors.orange,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'IBMPlex',
          ),
          labelText: 'Password',
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
    );
  }
}
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(this.title, {Key? key}) : super(key: key);

  final String title;

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
      height: 60,
      child: TextField(
        obscureText: _obscureText,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          suffixIcon: IconButton(
            color: Color(0xFF050522),
            onPressed: () => toogleObscure(),
            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Color(0xFF050522), width: 1.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Color(0xFF050522), width: 2.0),
          ),
          floatingLabelStyle: const TextStyle(
            color: Color(0xFF050522),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Roboto',
          ),
          labelText: widget.title,
          hintStyle: const TextStyle(
            color: Color(0xFF050522),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Roboto',
          ),
        ),
        style: const TextStyle(
          color: Color(0xFF050522),
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontFamily: 'Roboto',
        ),
      ),
    );
  }
}
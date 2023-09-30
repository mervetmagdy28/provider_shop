import 'package:flutter/material.dart';
import '../contants.dart';

class CustomTextFiald extends StatelessWidget {
  const CustomTextFiald({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
            cursorColor: primaryColor,
            obscureText: text == "Password" ? true : false,
            decoration: InputDecoration(
              hintText: text,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: primaryColor)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: primaryColor)),

            ),
          );
  }
}


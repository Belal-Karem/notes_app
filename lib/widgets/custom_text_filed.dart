import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, this.maxline = 1, required this.hintText});

  final String? hintText;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      maxLines: maxline,

      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Color: kprimarycolor),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 20, color: kprimarycolor),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        cursorColor: kprimarycolor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(Color: kprimarycolor),
          hintText: 'titel',
          hintStyle: TextStyle(fontSize: 20, color: kprimarycolor),
        ),
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

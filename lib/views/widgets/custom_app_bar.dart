import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.widget});

  final String text;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
        Spacer(),
        widget,
      ],
    );
  }
}

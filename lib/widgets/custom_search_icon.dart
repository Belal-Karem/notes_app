import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, this.icon});

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xff3B3B3B),
      ),
      child: Icon(icon, size: 30),
    );
  }
}

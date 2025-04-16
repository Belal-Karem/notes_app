import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kprimarycolor,
      ),
      child: Center(
        child: Text('Add', style: TextStyle(fontSize: 20, color: Colors.black)),
      ),
    );
  }
}

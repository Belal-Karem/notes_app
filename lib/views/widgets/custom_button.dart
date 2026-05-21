import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoding = false});

  final void Function()? onTap;
  final bool isLoding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kprimarycolor,
        ),
        child: Center(
          child:
              isLoding
                  ? SizedBox(
                    height: 24,
                    width: 24,
                    child: const CircularProgressIndicator(color: Colors.black),
                  )
                  : const Text(
                    'Add',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
        ),
      ),
    );
  }
}

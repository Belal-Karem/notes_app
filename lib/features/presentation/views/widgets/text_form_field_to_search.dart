import 'package:flutter/material.dart';

class TextFormFieldToSearch extends StatelessWidget {
  const TextFormFieldToSearch({
    super.key,
    this.onChanged,
    required this.focusNode,
  });

  final void Function(String)? onChanged;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color(0xff7C7A7E),
      key: const ValueKey('textfield'),
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(color: Color(0xff7C7A7E)),
        contentPadding: EdgeInsets.all(10),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
      onChanged: onChanged,
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Color(0xff3A3A3A), width: 1.5),
    );
  }
}

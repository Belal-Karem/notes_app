import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        CustomTextFiled(hintText: 'Titel'),
        CustomTextFiled(hintText: 'content', maxline: 6),
      ],
    );
  }
}

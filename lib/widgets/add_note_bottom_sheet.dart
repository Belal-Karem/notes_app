import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            CustomTextFiled(hintText: 'Titel'),
            SizedBox(height: 20),
            CustomTextFiled(hintText: 'content', maxline: 6),
            SizedBox(height: 100),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

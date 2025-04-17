import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(text: 'Edit Note', icon: Icons.check),
          SizedBox(height: 25),
          CustomTextFiled(hintText: 'Titel'),
          SizedBox(height: 20),
          CustomTextFiled(hintText: 'content', maxline: 6),
        ],
      ),
    );
  }
}

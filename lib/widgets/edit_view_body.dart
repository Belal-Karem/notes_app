import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [CustomAppBar(text: 'Edit Note', icon: Icons.check)],
      ),
    );
  }
}

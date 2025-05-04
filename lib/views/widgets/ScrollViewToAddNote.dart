import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class ScrollViewToAddNote extends StatelessWidget {
  const ScrollViewToAddNote({super.key, required this.absorbing});

  final bool absorbing;
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: absorbing,
      child: Padding(
        padding: EdgeInsets.only(
          left: 12,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: const SingleChildScrollView(child: addnoteform()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/note_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';
import 'package:notes_app/views/widgets/edit_note_colors_list.dart';

import 'custom_search_icon.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? titel, content;
  @override
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              text: 'Edit Note',
              widget: CustomIcon(
                onPressed: () {
                  widget.note.title = titel ?? widget.note.title;
                  widget.note.subtitle = content ?? widget.note.subtitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                icon: Icons.check,
              ),
            ),
            SizedBox(height: 25),
            CustomTextFiled(
              onChanged: (data) {
                titel = data;
              },
              hintText: widget.note.title,
            ),
            SizedBox(height: 20),
            CustomTextFiled(
              onChanged: (data) {
                content = data;
              },
              hintText: widget.note.subtitle,
              maxline: 6,
            ),
            EditNoteColorsList(note: widget.note),
          ],
        ),
      ),
    );
  }
}

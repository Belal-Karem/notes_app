import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/note_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppBar(text: 'Notes', icon: Icons.search),
          SizedBox(height: 20),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

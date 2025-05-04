import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/helper/show_snack_bar.dart';
import 'package:notes_app/note_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/ScrollViewToAddNote.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFeliure) {
            showSnackBar(context, state.errorMessage);
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ScrollViewToAddNote(
            absorbing: state is AddNoteLoding ? true : false,
          );
        },
      ),
    );
  }
}

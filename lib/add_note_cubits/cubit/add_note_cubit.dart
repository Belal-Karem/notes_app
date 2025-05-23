import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = const Color(0xff15616d);

  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteInitial());
    try {
      var noteBox = Hive.box<NoteModel>(knotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFeliure(e.toString()));
    }
  }
}

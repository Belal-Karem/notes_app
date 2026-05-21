import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/features/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel> allNotes = [];
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(knotesBox);
    allNotes = notesBox.values.toList();
    emit(NotesSuccess(notes: allNotes));
  }

  void searchNotes(String query) {
    var notesBox = Hive.box<NoteModel>(knotesBox);
    allNotes =
        notesBox.values
            .where(
              (note) => note.title.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
    emit(NotesSuccess(notes: allNotes));
  }
}

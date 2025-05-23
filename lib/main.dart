import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/add_note_cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/note_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(knotesBox);

  runApp(notes_app());
}

class notes_app extends StatelessWidget {
  const notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Color(0xff303030),
          fontFamily: 'Poppins',
        ),
        home: const NotesView(),
      ),
    );
  }
}

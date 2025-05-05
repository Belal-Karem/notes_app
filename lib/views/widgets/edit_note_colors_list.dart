import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  int currentIndex = 0;

  @override
  void initState() {
    currentIndex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kcolors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index ? true : false,
                color: kcolors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

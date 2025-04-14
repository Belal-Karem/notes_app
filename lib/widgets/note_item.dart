import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'flutter tinps',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: const Text(
                'build your with create tharwar samy',
                style: TextStyle(
                  color: const Color.fromARGB(153, 46, 48, 49),
                  fontSize: 20,
                ),
              ),
            ),
            trailing: const Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'may21 ,2024',
              style: TextStyle(color: const Color.fromARGB(153, 46, 48, 49)),
            ),
          ),
        ],
      ),
    );
  }
}

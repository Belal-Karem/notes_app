import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';
import 'package:notes_app/views/widgets/search_widget.dart';

class TextOnTap extends StatelessWidget {
  const TextOnTap({super.key, required this.widget, this.onTap});

  final SearchWidget widget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const ValueKey('text'),
      onTap: onTap,
      child: CustomIcon(icon: Icons.search),
    );
  }
}

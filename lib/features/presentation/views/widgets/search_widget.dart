import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/presentation/views/widgets/text_form_field_to_search.dart';
import 'package:notes_app/features/presentation/views/widgets/text_on_tap.dart';

import '../../manager/note_cubit/cubit/notes_cubit.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final FocusNode focusNode = FocusNode();
  bool isSearching = false;

  @override
  void initState() {
    super.initState();

    focusNode.addListener(() {
      if (!focusNode.hasFocus && isSearching) {
        setState(() => isSearching = false);
      }
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  void openSearch() {
    setState(() => isSearching = true);
    Future.delayed(const Duration(milliseconds: 50), () {
      focusNode.requestFocus();
    });
  }

  void closeSearch() {
    FocusScope.of(context).unfocus();
    setState(() => isSearching = false);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return TapRegion(
      onTapOutside: (_) => closeSearch(),
      child: Row(
        children: [
          const SizedBox(width: 8),

          AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeInOut,

            width: isSearching ? width * 0.55 : 50,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),

              transitionBuilder: (child, animation) {
                final slide = Tween<Offset>(
                  begin: const Offset(-0.3, 0),
                  end: Offset.zero,
                ).animate(animation);

                return FadeTransition(
                  opacity: animation,
                  child: SlideTransition(position: slide, child: child),
                );
              },

              child:
                  isSearching
                      ? TextFormFieldToSearch(
                        focusNode: focusNode,
                        onChanged: (value) async {
                          context.read<NotesCubit>().searchNotes(value);
                          if (value.isEmpty) {
                            context.read<NotesCubit>().fetchAllNotes();
                          }
                        },
                      )
                      : TextOnTap(widget: widget, onTap: openSearch),
            ),
          ),
        ],
      ),
    );
  }
}

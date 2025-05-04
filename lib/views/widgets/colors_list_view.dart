import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> colors = const [
    Color(0xff15616d),
    Color(0xffffecd1),
    Color(0xffff7d00),
    Color(0xff78290f),
    Color(0xffDB5375),
    Color(0xffFFBE0B),
    Color(0xffFB5607),
    Color(0xffFF006E),
    Color(0xff8338EC),
    Color(0xff3A86FF),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index ? true : false,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

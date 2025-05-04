import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_grid_view_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 0.5,
      children: [
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
        CustomNoteGridItem(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_list_view_item.dart';

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
      ],
    );
  }
}

class CustomNoteGridItem extends StatelessWidget {
  const CustomNoteGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        border: Border.all(color: Colors.grey),
      ),
      child: Text(
        'My Note',
        maxLines: 10,
        style: TextStyle(fontSize: 14),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

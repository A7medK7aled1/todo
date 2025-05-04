import 'package:flutter/material.dart';

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
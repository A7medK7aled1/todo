import 'package:flutter/material.dart';
import 'package:todo/models/note_model.dart';

class CustomNoteListItem extends StatelessWidget {
  const CustomNoteListItem({super.key, required this.text});

  final String text;

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
        text,
        maxLines: 10,
        style: TextStyle(fontSize: 14),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

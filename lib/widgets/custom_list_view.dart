import 'package:flutter/material.dart';

class CustomNoteListView extends StatelessWidget {
  const CustomNoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return const CustomNoteListItem();
      },
    );
  }
}

class CustomNoteListItem extends StatelessWidget {
  const CustomNoteListItem({super.key});

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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/note_store_provider.dart';
import 'package:todo/widgets/custom_grid_view_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteStoreProvider>(
      builder: (BuildContext context, notes, child) {
        final noteList = notes.notesList;
        final key = notes.notesKeys;
        return GridView.count(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 0.5,
          children: List.generate(noteList.length, (index) {
            return CustomNoteGridItem(
              note: noteList[index],
              title: noteList[index].title,
              index: key[index],
            );
          }),
        );
      },
    );
  }
}

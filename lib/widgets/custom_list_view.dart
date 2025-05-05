

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/note_store_provider.dart';
import 'package:todo/widgets/custom_list_view_item.dart';

class CustomNoteListView extends StatelessWidget {
  const CustomNoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteStoreProvider>(builder: (context, notes, child) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: 10),
        itemCount: notes.notesList.length ,
        itemBuilder: (BuildContext context, int index) {
          return CustomNoteListItem(
            note: notes.notesList[index],
            index: notes.notesKeys[index],
            title: notes.notesList[index].title,
          );
        },
      );
    });
  }
}

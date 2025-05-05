import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/note_model.dart';
import 'package:todo/provider/note_store_provider.dart';
import 'package:todo/views/add_note_view.dart';

class CustomNoteGridItem extends StatelessWidget {
  const CustomNoteGridItem(
      {super.key, required this.title, this.note, required this.index});
  final String title;
  final NoteModel? note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap event here
        // For example, you can navigate to a detail page or show a dialog
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNoteView(
                note: note,
                index: index, // تمرير الملاحظة للمحرر
              ),
            ));
      },
      child: Container(
        // width: MediaQuery.of(context).size.width / 2 - 20,
        // height: MediaQuery.of(context).size.height / 4 - 20,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(children: [
                Expanded(
                  child: Text(
                    softWrap: true,
                    title,
                    maxLines: 3,
                    style: TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Provider.of<NoteStoreProvider>(context, listen: false)
                        .deleteNote(index);
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

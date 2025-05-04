import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/models/note_model.dart';

class NoteStoreProvider extends ChangeNotifier {
  List<NoteModel>? notesList;
  addNote(NoteModel note) async {
    try {
      var notebox = Hive.box<NoteModel>('notesBox');
      await notebox.add(note);
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
  }

  readNote() {
    try {
      var notebox = Hive.box<NoteModel>('notesBox');
      notesList = notebox.values.toList();
    } catch (e) {
      log(e.toString());
    }
    notifyListeners();
  }

  deleteNote(int index) async {
    try {
      var notebox = Hive.box<NoteModel>('notesBox');
      await notebox.deleteAt(index);
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
  }
}

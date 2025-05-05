import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo/models/note_model.dart';

class NoteStoreProvider extends ChangeNotifier {
  List<NoteModel> notesList = [];
  List<int> notesKeys = [];

  addNote(NoteModel note) async {
    try {
      var notebox = Hive.box<NoteModel>('notesBox');
      await notebox.add(note);
      _refreshNotes(notebox);
    } catch (e) {
      log('Add Error: ${e.toString()}');
    }
  }

  readNote() {
    try {
      var notebox = Hive.box<NoteModel>('notesBox');
      _refreshNotes(notebox);
    } catch (e) {
      log('Read Error: ${e.toString()}');
    }
  }

  deleteNote(int key) async {
    try {
      var notebox = Hive.box<NoteModel>('notesBox');
      await notebox.delete(key);
      _refreshNotes(notebox);
    } catch (e) {
      log('Delete Error: ${e.toString()}');
    }
  }

  updateNote(int key, NoteModel note) async {
    try {
      var notebox = Hive.box<NoteModel>('notesBox');
      await notebox.put(key, note);
      _refreshNotes(notebox);
    } catch (e) {
      log('Update Error: ${e.toString()}');
    }
  }

  void _refreshNotes(Box<NoteModel> box) {
    notesList = box.values.toList();
    notesKeys = box.keys.cast<int>().toList(); // لازم تتأكد إنها int
    notifyListeners();
  }
}

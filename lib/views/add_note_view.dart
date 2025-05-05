import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todo/models/note_model.dart';

import 'package:todo/provider/note_store_provider.dart';
import 'package:todo/widgets/custom_text_field.dart';

class AddNoteView extends StatefulWidget {
  const AddNoteView({super.key, this.note, this.index});
  final NoteModel? note;
  final int? index;

  @override
  State<AddNoteView> createState() => _AddNoteViewState();
}

class _AddNoteViewState extends State<AddNoteView> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _titleController;
  late TextEditingController _noteController;

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      _titleController = TextEditingController(text: widget.note!.title);
      _noteController = TextEditingController(text: widget.note!.content);
    } else {
      _titleController = TextEditingController();
      _noteController = TextEditingController();
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final note = NoteModel(
                    id: 1.toString(),
                    title: _titleController.text,
                    content: _noteController.text,
                    date: DateTime.now(),
                  );

                  if (widget.note == null) {
                    // إضافة ملاحظة جديدة
                    Provider.of<NoteStoreProvider>(context, listen: false)
                        .addNote(note);
                  } else {
                    // تعديل ملاحظة موجودة
                    Provider.of<NoteStoreProvider>(context, listen: false)
                        .updateNote(
                      widget.index!,
                      note,
                    );
                  }

                  Navigator.pop(context);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Note saved successfully')),
                  );
                }
              },
              icon: const Icon(Icons.save),
              iconSize: 35,
              padding: const EdgeInsets.only(right: 12),
              tooltip: 'Save',
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: _titleController,
                    hintText: 'Title',
                    fontSize: 30,
                  ),
                  CustomTextField(
                    controller: _noteController,
                    hintText: 'Note',
                    fontSize: 20,
                    maxLines: null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

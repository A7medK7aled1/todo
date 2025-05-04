import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_text_field.dart';

class AddNoteView extends StatefulWidget {
  const AddNoteView({super.key});

  @override
  State<AddNoteView> createState() => _AddNoteViewState();
}

class _AddNoteViewState extends State<AddNoteView> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _noteController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
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
                  // Save the note to the database or perform any action
                  // For now, just print the values
                  log('Title: ${_titleController.text}');
                  log('Note: ${_noteController.text}');
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

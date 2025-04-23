import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_text_field.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CustomTextField(
                  hintText: 'Title',
                  fontSize: 30,
                ),
                CustomTextField(
                  hintText: 'Note',
                  fontSize: 20,
                  maxLines: null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

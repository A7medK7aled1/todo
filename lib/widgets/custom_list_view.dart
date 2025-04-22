import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_list_view_item.dart';

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


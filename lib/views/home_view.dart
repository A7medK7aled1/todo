import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/constant.dart';
import 'package:todo/provider/note_store_provider.dart';
import 'package:todo/provider/organized_provider.dart';
import 'package:todo/provider/theme_provider.dart';
import 'package:todo/views/add_note_view.dart';
import 'package:todo/widgets/custom_grid_view.dart';
import 'package:todo/widgets/custom_list_view.dart';
import 'package:todo/widgets/custom_search_bar.dart';
import 'package:todo/widgets/empty_note.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: themeProvider.isDarkMode ? kDarkMode : kLightMode,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddNoteView()));
          },
          child: const Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearchBar(
                onPressed: themeProvider.toggleTheme,
              ),
              Consumer<NoteStoreProvider>(builder: (context, note, child) {
                return Consumer<OrganizedProvider>(
                  builder: (BuildContext context, org, child) {
                    if (note.notesList.isEmpty) {
                      return EmptyNotes();
                    } else {
                      if (org.gridStyle) {
                        return const CustomGridView();
                      } else {
                        return const CustomNoteListView();
                      }
                    }
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

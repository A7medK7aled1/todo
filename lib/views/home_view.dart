import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/theme_provider.dart';
import 'package:todo/widgets/custom_list_view.dart';
import 'package:todo/widgets/custom_search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  CustomSearchBar(
                    onPressed: themeProvider.toggleTheme,
                  ),
                  const CustomNoteListView(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

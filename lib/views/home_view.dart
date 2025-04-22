import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/constant.dart';
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
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: themeProvider.isDarkMode ? kDarkMode : kLightMode,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearchBar(
                onPressed: themeProvider.toggleTheme,
              ),
              const CustomNoteListView(),
            ],
          ),
        ),
      ),
    );
  }
}

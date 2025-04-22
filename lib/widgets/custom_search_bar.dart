// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:todo/views/search_view.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      final searchBarColors = themeProvider.isDarkMode
          ? const Color(0xff172228)
          : const Color(0xffe5f0f6);

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SearchView(),
                ));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 60,
            decoration: BoxDecoration(
              color: searchBarColors,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Search your notes',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.grid_view)),
                    IconButton(
                        onPressed: onPressed,
                        icon: Icon(FontAwesomeIcons.circleHalfStroke)),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

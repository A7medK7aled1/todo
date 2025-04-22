import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/organized_provider.dart';
import 'package:todo/provider/theme_provider.dart';
import 'package:todo/views/home_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: ChangeNotifierProvider(
          create: (BuildContext context) {
            return OrganizedProvider();
          },
          child: const HomeView()),
    );
  }
}

import 'package:flutter/material.dart';

class EmptyNotes extends StatelessWidget {
  const EmptyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        SizedBox(
          height: 287,
          width: 350,
          child: Image.asset('assets/image/Notebook-rafiki.png'),
        ),
        const SizedBox(height: 6.27),
        const Text(
          'Create your first note !',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}

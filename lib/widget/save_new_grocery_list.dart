import 'package:flutter/material.dart';

class SaveNewGroceryList extends StatelessWidget {
  const SaveNewGroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.title),
                hintText: 'Tytuł',
                labelText: 'Podaj tytuł swojej listy',
              ),
            ))
      ],
    );
  }
}

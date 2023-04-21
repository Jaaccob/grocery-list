import 'package:flutter/material.dart';

class SaveNewItem extends StatelessWidget {
  const SaveNewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dodaj nowy element'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.title),
                    hintText: 'Nazwa',
                    labelText: 'Podaj nazwę przedmiotu',
                  ),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Zapisz'),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:lista_zakupowa/pages/home_screen.dart';

import 'models/object_grocery_list.dart';
import 'models/object_item_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<ObjectGroceryList> _groceryList = <ObjectGroceryList>[];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

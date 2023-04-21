import 'package:flutter/material.dart';
import 'package:lista_zakupowa/widget/grocery_list.dart';

import '../models/object_grocery_list.dart';
import '../models/object_item_list.dart';
import '../widget/save_new_grocery_list.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ObjectGroceryList> groceryList = <ObjectGroceryList>[];

  _HomeScreenState(){
    var item1 = ObjectItemList(
      "Masło",
    );
    var item2 = ObjectItemList("Mleko");
    var item3 = ObjectItemList("Cebula");
    var item4 = ObjectItemList("Jogurt");
    var item5 = ObjectItemList("Śmietana");
    List<ObjectItemList> listOfItem = <ObjectItemList>[];
    listOfItem.add(item1);
    listOfItem.add(item2);
    listOfItem.add(item3);
    listOfItem.add(item4);
    listOfItem.add(item5);
    groceryList.add(ObjectGroceryList("Zakupy na obiad", listOfItem));
    groceryList.add(ObjectGroceryList("Zakupy na kolacje", listOfItem));
    groceryList.add(ObjectGroceryList("Zakupy na śniadanie", listOfItem));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Twoje listy zakupowe"),
        actions: [
          IconButton(
              onPressed: _saveNewGroceryList, icon: const Icon(Icons.add))
        ],
      ),
      body: GroceryList(groceryList),
    );
  }

  void _saveNewGroceryList() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Utwórz nową listę'),
        ),
        body: const SaveNewGroceryList(),
      );
    }));
  }
}

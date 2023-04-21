import 'package:flutter/material.dart';
import 'package:lista_zakupowa/models/object_item_list.dart';
import 'package:lista_zakupowa/widget/save_new_item.dart';

class SingleGroceryList extends StatefulWidget {
  SingleGroceryList(this._groceryList, this.title, {super.key});

  String title = "";
  List<ObjectItemList> _groceryList = <ObjectItemList>[];

  @override
  State<StatefulWidget> createState() => _SingleGroceryList();
}

class _SingleGroceryList extends State<SingleGroceryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista zakupów: ${widget.title}'),
          actions: [
            IconButton(onPressed: _saveNewItem, icon: const Icon(Icons.add))
          ],
        ),
        body: Scaffold(
          body: Card(
            elevation: 18,
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: widget._groceryList.length,
              itemBuilder: (context, index) {
                return _buildRow(widget._groceryList[index]);
              },
            ),
          ),
        ));
  }

  Widget _buildRow(ObjectItemList groceryList) {
    return ListTile(
      title: Text(groceryList.getItem()),
      subtitle: Text(groceryList.getCost().toString()),
      trailing: Icon(
        groceryList.isCheck() ? Icons.check : Icons.check_box_outline_blank,
        color: groceryList.isCheck() ? Colors.green : null,
      ),
      onTap: () {
        setState(() {
          if (groceryList.isCheck()) {
            groceryList.setCheck(false);
          } else {
            groceryList.setCheck(true);
          }
        });
      },
    );
  }

  void _saveNewItem() {
    var value = Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return const SaveNewItem();
    }));
    widget._groceryList.add(ObjectItemList(value.toString()));
  }
}

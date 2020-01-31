import 'dart:convert';

import 'package:flutter/material.dart';

class ReordenablePage extends StatefulWidget {
  final String title;
  const ReordenablePage({Key key, this.title = "Reordenable"})
      : super(key: key);

  @override
  _ReordenablePageState createState() => _ReordenablePageState();
}

class _ReordenablePageState extends State<ReordenablePage> {
  List<int> items = [];
  List<dynamic> programItems = [];

  Future getProgramsItems() async {
    programItems = json.decode(
        '[{"documentID": "001_ABC", "program_item_title": "Activity"}, {"documentID": "002_ABC", "program_item_title": "Connect with Others"}, {"documentID": "003_ABC", "program_item_title": "Bible Story"}, {"documentID": "004_ABC", "program_item_title": "Discussion"}, {"documentID": "005_ABC", "program_item_title": "Prayer"}, {"documentID": "006_ABC", "program_item_title": "Welcome"}]');

    makeTiles();

    return programItems;
  }

  makeTiles() {
    items = [];
    for (int i = 0; i < programItems.length; i++) {
      items.add(i);
    }
  }

  ListTile makeTile(int index) {
    var item = programItems[index];
    return ListTile(
      key: Key(item["documentID"]),
      title: Text(item["program_item_title"]),
    );
  }

  onReorder(oldIndex, newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    setState(() {
      final int item = items.removeAt(oldIndex);
      items.insert(newIndex, item);
    });
  }

  @override
  void initState() {
    super.initState();
    getProgramsItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ReorderableListView(
        children: items.map(makeTile).toList(),
        onReorder: (oldIndex, newIndex) {
          onReorder(oldIndex, newIndex);
        },
      ),
    );
  }
}

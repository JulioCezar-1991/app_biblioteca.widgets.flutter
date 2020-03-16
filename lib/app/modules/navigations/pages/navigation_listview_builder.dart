import 'package:flutter/material.dart';

class NavigationListViewBuilder extends StatefulWidget {
  @override
  _NavigationListViewBuilderState createState() =>
      _NavigationListViewBuilderState();
}

class _NavigationListViewBuilderState extends State<NavigationListViewBuilder> {
  _onTap(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return SecondScreen(
            index: index,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuild"),
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              _onTap(index);
            },
            title: Text("Item $index"),
            subtitle: Text("Bubtitulo"),
            dense: false,
            enabled: true,
            leading: CircleAvatar(
              child: Text("$index"),
              foregroundColor: Colors.blueAccent,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final int index;

  const SecondScreen({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: Center(
        child: Text("Item $index"),
      ),
    );
  }
}

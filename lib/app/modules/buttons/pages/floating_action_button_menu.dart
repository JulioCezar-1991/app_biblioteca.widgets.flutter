import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class FloatingActionButtonMenuPage extends StatefulWidget {
  final title;

  const FloatingActionButtonMenuPage(
      {Key key, this.title = "FloatingActionButtonMenu"})
      : super(key: key);
  @override
  _FloatingActionButtonMenuPageState createState() =>
      _FloatingActionButtonMenuPageState();
}

class _FloatingActionButtonMenuPageState
    extends State<FloatingActionButtonMenuPage> {
  final controller = FabCircularMenuController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FabCircularMenu(
        child: Container(),
        ringColor: Theme.of(context).primaryColor.withOpacity(0.05),
        controller: controller,
        animationDuration: Duration(seconds: 001),
        fabCloseIcon: Icon(
          Icons.clear,
          color: Colors.white,
        ),
        fabOpenIcon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        ringWidth: 60,
        ringDiameter: 200,
        options: <Widget>[
          IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                controller.isOpen = false;
              },
              iconSize: 28.0,
              color: Theme.of(context).primaryColor),
          IconButton(
              icon: Icon(Icons.fastfood),
              onPressed: () {},
              iconSize: 28.0,
              color: Theme.of(context).primaryColor),
          IconButton(
              icon: Icon(Icons.pets),
              onPressed: () {},
              iconSize: 28.0,
              color: Theme.of(context).primaryColor),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              iconSize: 28.0,
              color: Theme.of(context).primaryColor),
        ],
      ),
    );
  }
}

class SimpleRoundButton {}

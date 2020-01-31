import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavigationPage extends StatefulWidget {
  final String title;
  const NavigationPage({Key key, this.title = "Navigation"}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("AppBar"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/appbar');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("AppBarBottom"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/appbarbottom');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("NavigationBetweenScreen"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/between');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("BottomSheet"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/bottomsheet');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("CollapsibleToolbar"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/collapsible');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Drawer"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/drawer');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("ExpansionTile"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/expansiontile');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("ListViewBuilder"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/listview');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("PageViewBuilder"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/pageview');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Stepper"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/stepper');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("TabBar"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/tabbar');
              },
            ),
          ],
        ),
      ),
    );
  }
}

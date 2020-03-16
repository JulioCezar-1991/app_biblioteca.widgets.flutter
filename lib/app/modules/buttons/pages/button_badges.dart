import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class BadgesPage extends StatefulWidget {
  final String title;
  const BadgesPage({Key key, this.title = "Badges"}) : super(key: key);
  @override
  _BadgesPageState createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Badge(
                  child: Icon(
                    Icons.mail_outline,
                    size: 40,
                  ),
                  badgeContent: Text("1"),
                  badgeColor: Colors.purple,
                  animationType: BadgeAnimationType.fade,
                  animationDuration: Duration(seconds: 2),
                  shape: BadgeShape.circle,
                ),
                Badge(
                  child: Icon(
                    Icons.music_note,
                    size: 40,
                  ),
                  badgeContent: Text("new"),
                  badgeColor: Colors.green,
                  animationType: BadgeAnimationType.scale,
                  animationDuration: Duration(seconds: 1),
                  shape: BadgeShape.square,
                  position: BadgePosition(left: 35, top: -8),
                ),
                Badge(
                    child: Icon(
                      Icons.people,
                      size: 40,
                    ),
                    badgeContent: Text("3"),
                    badgeColor: Colors.blue,
                    animationType: BadgeAnimationType.slide,
                    animationDuration: Duration(seconds: 2),
                    shape: BadgeShape.circle),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Badge(
              child: RaisedButton(
                child: Text('Notifications'),
                onPressed: () {
                  setState(() {
                    _counter = _counter + 1;
                  });
                },
              ),
              badgeContent: Text("${this._counter}"),
              badgeColor: Colors.purple,
              animationType: BadgeAnimationType.slide,
            ),
            SizedBox(
              height: 40,
            ),
            Badge(
              child: RaisedButton(
                child: Text('Notifications'),
                onPressed: () {
                  setState(() {
                    _counter = _counter + 1;
                  });
                },
              ),
              badgeContent: Text("${this._counter}"),
              badgeColor: Colors.green,
              animationType: BadgeAnimationType.scale,
              shape: BadgeShape.square,
            ),
            SizedBox(
              height: 40,
            ),
            Badge(
              child: RaisedButton(
                child: Text(' Delete Notifications'),
                onPressed: () {
                  setState(() {
                    _counter = _counter - 1;
                  });
                },
              ),
              badgeContent: Text("${this._counter}"),
              badgeColor: Colors.blue,
              animationType: BadgeAnimationType.fade,
            ),
          ],
        ),
      ),
    );
  }
}

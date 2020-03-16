import 'package:flutter/material.dart';

class NavigationHero extends StatefulWidget {
  final title;

  const NavigationHero({Key key, this.title = "Hero"}) : super(key: key);
  @override
  _NavigationHeroState createState() => _NavigationHeroState();
}

class _NavigationHeroState extends State<NavigationHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return DetailsScreen();
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DetalScreen")),
      body: Container(
        child: Row(
          children: <Widget>[
            GestureDetector(
              child: Hero(
                tag: 'imageHero',
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  fit: BoxFit.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

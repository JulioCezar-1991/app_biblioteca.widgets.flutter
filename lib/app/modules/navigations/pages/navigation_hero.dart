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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return DetailScreen();
            }));
          },
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailScreen'),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.black,
              child: Hero(
                tag: 'imageHero',
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                  scale: 1,
                ),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

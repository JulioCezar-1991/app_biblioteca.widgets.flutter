import 'package:flutter/material.dart';

class NavigationAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: AppBar(
              title: Text("Title"),
              backgroundColor: Colors.orange,
              elevation: 4.0,
            ),
            margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              title: Text("Appbar actions"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              title: Text("Center"),
              centerTitle: true,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              title: Text("Appbar Icon and Text Theme"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              textTheme: TextTheme(
                title: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    "subtitle",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              backgroundColor: Colors.orangeAccent,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  FlutterLogo(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Title with image",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              title: Text("Transparent AppBar"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
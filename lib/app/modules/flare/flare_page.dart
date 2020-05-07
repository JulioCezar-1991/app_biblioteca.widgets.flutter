import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlarePage extends StatefulWidget {
  final String title;
  const FlarePage({Key key, this.title = "Flare"}) : super(key: key);

  @override
  _FlarePageState createState() => _FlarePageState();
}

class _FlarePageState extends State<FlarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: FlareActor(
            "assets/flare_loading.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "Alarm",
          ),
        ),
      ),
    );
  }
}

/* https://rive.app/explore/popular/trending/all */

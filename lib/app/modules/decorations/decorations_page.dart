import 'package:biblioteca_framework_flutter_github_io/app/components/custom_botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DecorationsPage extends StatefulWidget {
  final String title;
  const DecorationsPage({Key key, this.title = "Decorations"})
      : super(key: key);

  @override
  _DecorationsPageState createState() => _DecorationsPageState();
}

class _DecorationsPageState extends State<DecorationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: "BackdropFilter",
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/backdrop');
              },
            ),
            CustomBotton(
              title: "ClipPath",
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/clippath');
              },
            ),
            CustomBotton(
              title: "Gradient",
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/gradient');
              },
            ),
            CustomBotton(
              title: "Radius",
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/radius');
              },
            ),
            CustomBotton(
              title: "Shadow",
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/shadow');
              },
            ),
          ],
        ),
      ),
    );
  }
}

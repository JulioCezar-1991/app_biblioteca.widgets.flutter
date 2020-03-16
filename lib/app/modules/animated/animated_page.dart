import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AnimatedPage extends StatefulWidget {
  final String title;
  const AnimatedPage({Key key, this.title = "Animated"}) : super(key: key);

  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
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
              title: 'AnimatedButton',
              onPressed: () {
                Modular.to.pushNamed('/home/animated/button');
              },
            ),
            CustomBotton(
              title: 'AnimatedCrossFade',
              onPressed: () {
                Modular.to.pushNamed('/home/animated/cross');
              },
            ),
            CustomBotton(
              title: 'Dismissible',
              onPressed: () {
                Modular.to.pushNamed('/home/animated/dismissible');
              },
            ),
            CustomBotton(
              title: 'DragTarget',
              onPressed: () {
                Modular.to.pushNamed('/home/animated/drog');
              },
            ),
            CustomBotton(
              title: 'AnimatedIcons',
              onPressed: () {
                Modular.to.pushNamed('/home/animated/icons');
              },
            ),
            CustomBotton(
              title: 'AnimatedRotationTransition',
              onPressed: () {
                Modular.to.pushNamed('/home/animated/rotation');
              },
            ),
            CustomBotton(
              title: 'AnimatedSize',
              onPressed: () {
                Modular.to.pushNamed('/home/animated/size');
              },
            ),
            CustomBotton(
              title: 'StaggerAnimation',
              onPressed: () {
                Modular.to.pushNamed('/home/animated/stagger');
              },
            ),
            CustomBotton(
              title: 'AnimatedSwitcher',
              onPressed: () {
                Modular.to.pushNamed('/home/animated/switcher');
              },
            ),
          ],
        ),
      ),
    );
  }
}

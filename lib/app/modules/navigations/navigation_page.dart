import 'package:biblioteca_framework_flutter_github_io/app/components/custom_botton_widget.dart';
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
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: 'AppBar',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/appbar');
              },
            ),
            CustomBotton(
              title: 'AppBarBottom',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/appbarbottom');
              },
            ),
            CustomBotton(
              title: 'NavigationBetweenScreen',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/between');
              },
            ),
            CustomBotton(
              title: 'BottomSheet',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/bottomsheet');
              },
            ),
            CustomBotton(
              title: 'CollapsibleToolbar',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/collapsible');
              },
            ),
            CustomBotton(
              title: 'Drawer',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/drawer');
              },
            ),
            CustomBotton(
              title: 'ExpansionTile',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/expansiontile');
              },
            ),
            CustomBotton(
              title: 'Hero',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/hero');
              },
            ),
            CustomBotton(
              title: 'ListViewBuilder',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/listview');
              },
            ),
            CustomBotton(
              title: 'PageViewBuilder',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/pageview');
              },
            ),
            CustomBotton(
              title: 'Stepper',
              onPressed: () {
                Modular.to.pushNamed('/home/navigation/stepper');
              },
            ),
            CustomBotton(
              title: 'TabBar',
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

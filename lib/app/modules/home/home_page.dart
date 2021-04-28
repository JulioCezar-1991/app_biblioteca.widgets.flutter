import 'package:biblioteca_framework_flutter_github_io/app/components/custom_botton_widget.dart';
import 'package:biblioteca_framework_flutter_github_io/app/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Provider.of<ThemeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/icons/Clone-Old-icon.png'),
            ),
            onTap: () {
              themeController.change('light');
            },
          ),
          GestureDetector(
            child: Container(
              padding:
                  EdgeInsets.only(bottom: 10, right: 22, left: 10, top: 10),
              child: Image.asset('assets/icons/Darth-Vader-icon.png'),
            ),
            onTap: () {
              themeController.change('dark');
            },
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: "Accessibility",
              onPressed: () {
                Modular.to.pushNamed('/home/acessibility');
              },
            ),
            CustomBotton(
              title: "AlertDisplay",
              onPressed: () {
                Modular.to.pushNamed('/home/alertdisplay');
              },
            ),
            CustomBotton(
              title: "Animated",
              onPressed: () {
                Modular.to.pushNamed('/home/animated');
              },
            ),
            CustomBotton(
              title: "AudioPlay",
              onPressed: () {
                Modular.to.pushNamed('/home/audioplay');
              },
            ),
            CustomBotton(
              title: "Buttons",
              onPressed: () {
                Modular.to.pushNamed('/home/buttons');
              },
            ),
            CustomBotton(
              title: "BoxController",
              onPressed: () {
                Modular.to.pushNamed('/home/boxcontroller');
              },
            ),
            CustomBotton(
              title: "Cards",
              onPressed: () {
                Modular.to.pushNamed('/home/card');
              },
            ),
            CustomBotton(
              title: "CameraGallery",
              onPressed: () {
                Modular.to.pushNamed('/home/cameragallery');
              },
            ),
            CustomBotton(
              title: "Charts",
              onPressed: () {
                Modular.to.pushNamed('/home/charts');
              },
            ),
            CustomBotton(
              title: "DateTime",
              onPressed: () {
                Modular.to.pushNamed('/home/datetime');
              },
            ),
            CustomBotton(
              title: "Decorations",
              onPressed: () {
                Modular.to.pushNamed('/home/decorations');
              },
            ),
            CustomBotton(
              title: "Flare",
              onPressed: () {
                Modular.to.pushNamed('/home/flare');
              },
            ),
            CustomBotton(
              title: "GoogleMap",
              onPressed: () {
                Modular.to.pushNamed('/home/googlemap');
              },
            ),
            CustomBotton(
              title: "InputData",
              onPressed: () {
                Modular.to.pushNamed('/home/inputdata');
              },
            ),
            CustomBotton(
              title: "Navigation",
              onPressed: () {
                Modular.to.pushNamed('/home/navigation');
              },
            ),
            CustomBotton(
              title: "Validator",
              onPressed: () {
                Modular.to.pushNamed('/home/validator');
              },
            ),
            CustomBotton(
              title: "ReorderableListView",
              onPressed: () {
                Modular.to.pushNamed('/home/reorderable');
              },
            ),
            CustomBotton(
              title: "SharedPreference",
              onPressed: () {
                Modular.to.pushNamed('/home/sharedpreference');
              },
            ),
            CustomBotton(
              title: "SqFlite",
              onPressed: () {
                Modular.to.pushNamed('/home/sqflite');
              },
            ),
            CustomBotton(
              title: "Tables",
              onPressed: () {
                Modular.to.pushNamed('/home/table');
              },
            ),
            CustomBotton(
              title: "Text",
              onPressed: () {
                Modular.to.pushNamed('/home/text');
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TextPage extends StatefulWidget {
  final String title;
  const TextPage({Key key, this.title = "Text"}) : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
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
              title: "TextRotatedBox",
              onPressed: () {
                Modular.to.pushNamed('/home/text/rotated');
              },
            ),
            CustomBotton(
              title: "TextSpan",
              onPressed: () {
                Modular.to.pushNamed('/home/text/span');
              },
            ),
            CustomBotton(
              title: "TextUnderline",
              onPressed: () {
                Modular.to.pushNamed('/home/text/underline');
              },
            ),
          ],
        ),
      ),
    );
  }
}

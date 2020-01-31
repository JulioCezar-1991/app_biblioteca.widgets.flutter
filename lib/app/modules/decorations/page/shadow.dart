import 'package:flutter/material.dart';

class ShadowExample extends StatefulWidget {
  @override
  _ShadowExampleState createState() => _ShadowExampleState();
}

class _ShadowExampleState extends State<ShadowExample> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Shadow"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height / 3.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.blue[400], blurRadius: 4),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 60, right: 36),
                    child: Text(
                      'Login:',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  final String title;
  const CardPage({Key key, this.title = "Card"}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 80,
                        child: Center(
                          child: Icon(Icons.security,
                              color: Colors.redAccent, size: 45),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 2.5),
                              child: Text(
                                "Julio Cezar Pereira Pinto",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.zero,
                              child: Text("Vila Pedroso - Goiânia/GO"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.5, bottom: 5),
                              child: Text("Nenhuma venda realizada",
                                  style: TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

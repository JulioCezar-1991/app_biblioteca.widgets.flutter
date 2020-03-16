import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatefulWidget {
  @override
  _FloatingActionButtonPageState createState() =>
      _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton"),
      ),
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        /* shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(9)
        ), */
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 6,
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        label: Text("Comprar"),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add_shopping_cart,
                color: Theme.of(context).primaryColor,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.credit_card,
                color: Theme.of(context).primaryColor,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

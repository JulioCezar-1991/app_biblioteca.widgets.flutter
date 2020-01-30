import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
              /*      bloc.save("light");
              bloc.change('light'); */
            },
          ),
          GestureDetector(
            child: Container(
              padding:
                  EdgeInsets.only(bottom: 10, right: 22, left: 10, top: 10),
              child: Image.asset('assets/icons/Darth-Vader-icon.png'),
            ),
            onTap: () {
              /*  bloc.save("dark");
              bloc.change('dark'); */
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Accessibility"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/acessibility');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text('Showdialog'),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/showdialog');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Animated"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("AudioPlay"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/audioplay');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Button"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/buttons');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Card"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/card');
              },
            ),
            /*
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("CameraGallery"),
              ),
              onPressed: () {
                Navigator.pushNamed(
                    context, RouteGenerator.ROUTE_CAMERAGALLERY);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Charts"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.ROUTE_HOMECHARTS);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("CPF - CNPJ"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.ROUTE_VALIDCPFCNPJ);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("DateTime"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.ROUTE_HOMEDATETIME);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Decoration"),
              ),
              onPressed: () {
                Navigator.pushNamed(
                    context, RouteGenerator.ROUTE_HOMEDECORATION);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Design"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.ROUTE_HOMEDESIGN);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Dio"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.ROUTE_HOMEDIO);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Flare"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.ROUTE_FLARE);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("GoogleMap"),
              ),
              onPressed: () {
                Navigator.pushNamed(
                    context, RouteGenerator.ROUTE_HOMEGOOGLEMAPS);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("InputData"),
              ),
              onPressed: () {
                Navigator.pushNamed(
                    context, RouteGenerator.ROUTE_HOMEINPUTDATA);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("SharedPreference"),
              ),
              onPressed: () {
                Navigator.pushNamed(
                    context, RouteGenerator.ROUTE_SHAREDPREFERENCE);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("ReorderableListView"),
              ),
              onPressed: () {
                Navigator.pushNamed(
                    context, RouteGenerator.ROUTE_REORDERAVLELISTVIEW);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Table"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.ROUTE_HOMETABLE);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Text"),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeText(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Navigation"),
              ),
              onPressed: () {
                Navigator.pushNamed(
                    context, RouteGenerator.ROUTE_HOMENAVIGATION);
              },
            ), */
          ],
        ),
      ),
    );
  }
}

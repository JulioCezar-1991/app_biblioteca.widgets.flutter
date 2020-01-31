import 'package:flutter/material.dart';

class NavigationPageViewBuilder extends StatefulWidget {
  @override
  _NavigationPageViewBuilderState createState() => _NavigationPageViewBuilderState();
}

class _NavigationPageViewBuilderState extends State<NavigationPageViewBuilder> {
  
  PageController controller;

  @override
  void initState() {
    super.initState();

    controller = PageController(initialPage: 0);
    controller.addListener(() {
      print("Mudou pagina ${controller.page}");
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    List<String> pages = ["Batata", "Cenoura", "Abacate", "Tomate"];

    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              controller.previousPage(
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          ),
          IconButton(
            icon: Icon(Icons.loop),
            onPressed: () {
              controller.jumpToPage(0);
            },
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {
              controller.nextPage(
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          ),
        ],
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(child: Text(pages[index]));
        },
      ),
    );
  }
}

/*       body: PageView(
      physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical, 
        onPageChanged: (pageInt){
          print(pageInt);
        },
       
        children: <Widget>[
          Center(child: Text("Page1"),),
          Center(child: Text("Page2"),),
          Center(child: Text("Page3"),)
        ],
      ), */

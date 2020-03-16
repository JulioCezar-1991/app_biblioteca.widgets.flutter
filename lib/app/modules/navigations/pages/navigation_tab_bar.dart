// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class NavigationTabBar extends StatefulWidget {
  @override
  _NavigationTabBarState createState() => _NavigationTabBarState();
}

class _NavigationTabBarState extends State<NavigationTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar"),
        bottom: TabBar(
          isScrollable: false,
          indicatorColor: Colors.teal,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1,
          labelColor: Colors.greenAccent,
          unselectedLabelColor: Colors.teal,
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.greenAccent,
                width: 4.0,
              ),
            ),
          ),
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.add_shopping_cart),
              text: "Shopping",
            ),
            Tab(
              icon: Icon(Icons.search),
              text: "Search",
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Center(
            child: Text("Home",
                style: TextStyle(fontSize: 30, color: Colors.green)),
          ),
          Center(
            child: Text("Shopping",
                style: TextStyle(fontSize: 30, color: Colors.green)),
          ),
          Center(
            child: Text("Search",
                style: TextStyle(fontSize: 30, color: Colors.green)),
          ),
        ],
        controller: _tabController,
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

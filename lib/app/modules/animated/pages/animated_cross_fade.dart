// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  
  @override
  _AnimatedCrossFadeExampleState createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Cross Fade"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              AnimatedCrossFade(
                sizeCurve: ElasticOutCurve(),
                firstCurve: Curves.decelerate,
                secondCurve: Curves.decelerate,
                duration: const Duration(seconds: 3),
                firstChild: const FlutterLogo(
                    style: FlutterLogoStyle.horizontal, size: 100.0),
                secondChild: const FlutterLogo(
                    style: FlutterLogoStyle.markOnly, size: 100.0),
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      _first = !_first;
                    });
                  },
                  child: Text("Click")),
            ],
          ),
        ),
      ),
    );
  }
}

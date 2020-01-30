// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AnimatedRotationExemple extends StatefulWidget {
  @override
  _AnimatedRotationExempleState createState() =>
      _AnimatedRotationExempleState();
}

class _AnimatedRotationExempleState extends State<AnimatedRotationExemple>
    with SingleTickerProviderStateMixin {
  AnimationController _animation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
      duration: const Duration(milliseconds: 3600),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Rotation Transition"),
      ),
      body: Center(
        child: RotationTransition(
            turns: _animation,
            child: Container(
              decoration: FlutterLogoDecoration(),
              width: 200.0,
              height: 200.0,
            )),
      ),
    );
  }
}

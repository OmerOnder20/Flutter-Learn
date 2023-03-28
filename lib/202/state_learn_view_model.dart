import 'package:flutter/material.dart';

import 'animated_learn_view.dart';

abstract class StateLearnViewModel extends State<AnimatedLearnView> {
  @override
  void initState() {
    super.initState();
  }

  bool isVisible = false;
  bool isOpacity = false;

  void _changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}

// 11.video kesin izle!
// Daha temiz kod için view ekranında bunlar olmamalı.
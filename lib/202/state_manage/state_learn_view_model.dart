import 'package:first_project_flutter/202/state_manage/state_manage_learn_view.dart';
import 'package:flutter/material.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  @override
  void initState() {
    super.initState();
  }

  bool isVisible = false;
  bool isOpacity = true;

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

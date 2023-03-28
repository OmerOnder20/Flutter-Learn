// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LifeCycleDemo1 extends StatefulWidget {
  const LifeCycleDemo1({
    Key? key,
    required this.title,
  }) : super(key: key);

  final int title;

  @override
  State<LifeCycleDemo1> createState() => _LifeCycleDemo1State();
}

class _LifeCycleDemo1State extends State<LifeCycleDemo1> {
  late int _newTitle;

  @override
  void initState() {
    super.initState();
    if (widget.title > 5) {
      _newTitle = widget.title * 10;
    } else
      (_newTitle = widget.title * 1);
  }

  @override
  void didUpdateWidget(covariant LifeCycleDemo1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.title != widget.title) {
      print("Değişti");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_newTitle.toString()),
      ),
    );
  }
}

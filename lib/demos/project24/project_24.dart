import 'package:flutter/material.dart';

import '../../101/icon_learn.dart';
import '../../101/image_learn.dart';

class Project24 extends StatefulWidget {
  const Project24({super.key});

  @override
  State<Project24> createState() => _Project24State();
}

class _Project24State extends State<Project24> with TickerProviderStateMixin {
  late final TabController _controller;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: TabBar(controller: _controller, padding: EdgeInsets.zero, indicatorColor: Colors.red, tabs: const [
              Icon(
                Icons.home,
                color: Colors.black,
              ),
              Icon(Icons.markunread, color: Colors.black),
              Icon(Icons.settings, color: Colors.black)
            ]),
          ),
          appBar: AppBar(
            backgroundColor: Colors.grey,
            bottom: TabBar(
              controller: _controller,
              tabs: const [Text("Home"), Text("Messages"), Text("Settings")],
            ),
          ),
          body: TabBarView(controller: _controller, children: [IconLearnView(), const ImageLearn(), IconLearnView()]),
        ));
  }
}

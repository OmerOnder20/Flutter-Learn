import 'package:first_project_flutter/303/feed_view.dart';
import 'package:flutter/material.dart';

import '../101/icon_learn.dart';
import '../101/image_learn.dart';

class TabbarAdvanceLearn extends StatefulWidget {
  const TabbarAdvanceLearn({super.key});

  @override
  State<TabbarAdvanceLearn> createState() => _TabbarAdvanceLearnState();
}

class _TabbarAdvanceLearnState extends State<TabbarAdvanceLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            },
          ),
          bottomNavigationBar: BottomAppBar(
              notchMargin: _notchedValue,
              shape: const CircularNotchedRectangle(),
              child: TabBar(
                  padding: EdgeInsets.zero,
                  indicatorColor: Colors.green,
                  tabs: _MyTabViews.values
                      .map((e) => Tab(
                            text: "${e.name}",
                          ))
                      .toList())),
          appBar: AppBar(
            backgroundColor: Colors.grey,
            bottom: TabBar(
                controller: _tabController,
                tabs: _MyTabViews.values
                    .map((e) => Tab(
                          text: "${e.name}",
                        ))
                    .toList()),
          ),
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [const FeedView(), IconLearnView(), const ImageLearn(), IconLearnView()]),
        ));
  }
}

enum _MyTabViews { home, settings, profiles, favourites }

extension _MyTabViewsExtension on _MyTabViews {}

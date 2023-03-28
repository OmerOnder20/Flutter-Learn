import 'package:first_project_flutter/101/image_learn.dart';
import 'package:first_project_flutter/demos/project20/container_1.dart';
import 'package:first_project_flutter/demos/project20/container_2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../202/image_learn_202.dart';

class Project22 extends StatefulWidget {
  const Project22({super.key});

  @override
  State<Project22> createState() => _Project22State();
}

class _Project22State extends State<Project22> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: const Icon(Icons.ad_units_rounded),
        actions: const [Icon(Icons.man)],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 300,
              width: 300,
              child: PageView(
                  controller: _pageController,
                  children: const [ImageLearn(), ImageLearn202(), Container1(), Container2()]),
            ),
          ),
          Expanded(
              flex: 2,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.yellow,
                  dotColor: Colors.black,
                  dotHeight: 30,
                  dotWidth: 30,
                  spacing: 15,
                ),
              )),
          Expanded(
              flex: 2,
              child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: const JumpingDotEffect(
                      activeDotColor: Colors.yellow,
                      dotColor: Colors.black,
                      dotHeight: 30,
                      dotWidth: 30,
                      spacing: 15,
                      verticalOffset: 20
                      //jumpScale: 4),
                      )))
        ],
      ),
    );
  }
}

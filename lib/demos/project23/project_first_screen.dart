import 'package:first_project_flutter/202/image_learn_202.dart';
import 'package:first_project_flutter/demos/project23/page_1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Color.fromARGB(255, 224, 222, 222), width: 0)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Expanded(
                flex: 8,
                child: PageView(controller: _controller, children: [
                  Page1(
                    onPressed: () {
                      _controller.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.slowMiddle);
                    },
                  ),
                  const ImageLearn202()
                ])),
            Expanded(
              flex: 2,
              child: SmoothPageIndicator(
                controller: _controller,
                count: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

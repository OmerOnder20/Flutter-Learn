import 'package:first_project_flutter/demos/project20/container_1.dart';
import 'package:first_project_flutter/demos/project20/grid_view.dart';
import 'package:flutter/material.dart';

import 'container_2.dart';
import 'container_3.dart';

class Project20 extends StatefulWidget {
  const Project20({super.key});

  @override
  State<Project20> createState() => _Project20State();
}

class _Project20State extends State<Project20> {
  final List<Widget> containers = [
    const Container1(),
    const Container2(),
    const Container3(),
    const GridView20(),
  ];
  int intContainer = 0;
  void nextContainer() {
    setState(() {
      if (intContainer < containers.length - 1) {
        intContainer = intContainer + 1;
      } else {
        intContainer = containers.length - 1;
      }
    });
  }

  void previousContainer() {
    setState(() {
      if (intContainer != 0) {
        intContainer = intContainer - 1;
      } else {
        intContainer = 0;
      }
    });
  }

  void toGrid() {
    setState(() {
      intContainer = 3;
    });
  }

  void toContainer1() {
    setState(() {
      intContainer = containers.indexOf(const Container1());
    });

    print(containers.indexOf(const Container1()));
    print("Çıktı Vermiyor");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: ElevatedButton(
                    onPressed: () {
                      nextContainer();
                    },
                    child: const Text("Next Container")),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: ElevatedButton(
                    onPressed: () {
                      previousContainer();
                    },
                    child: const Text("Previous Container")),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  toContainer1();
                },
                child: const Text("to Container 1")),
            ElevatedButton(
                onPressed: () {
                  toGrid();
                },
                child: const Text("to Grid")),
            const Spacer(
              flex: 4,
            ),
            Expanded(flex: 5, child: containers[intContainer]),
          ],
        ),
      ),
    );
  }
}

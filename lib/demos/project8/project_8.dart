import 'package:flutter/material.dart';

class Project8 extends StatefulWidget {
  const Project8({super.key});

  @override
  State<Project8> createState() => _Project8State();
}

class _Project8State extends State<Project8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 300,
              width: 200,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network("https://picsum.photos/200"),
                  Image.network("https://picsum.photos/200"),
                  Image.network("https://picsum.photos/200"),
                  Image.network("https://picsum.photos/200"),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 300,
                width: 200,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Image.network("https://picsum.photos/200"),
                    Image.network("https://picsum.photos/200"),
                    Image.network("https://picsum.photos/200"),
                    Image.network("https://picsum.photos/200"),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

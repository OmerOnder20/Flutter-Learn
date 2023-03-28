import 'package:flutter/material.dart';

class Project6 extends StatefulWidget {
  const Project6({super.key});

  @override
  State<Project6> createState() => _Project6State();
}

class _Project6State extends State<Project6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SizedBox(
            height: 160,
            width: 160,
            child: Image.network(
              "https://w7.pngwing.com/pngs/902/971/png-transparent-paper-plane-airplane-paper-plane-flight-papel-angle-transport-vexel-thumbnail.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Text(
            "Create Account",
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
          ),
        ),
        TextField(),
        TextField(),
        TextField(),
      ]),
    );
  }
}

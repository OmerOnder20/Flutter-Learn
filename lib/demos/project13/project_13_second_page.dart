import 'package:flutter/material.dart';

class Project13SecondPage extends StatelessWidget {
  const Project13SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/png/living_room.jpg"), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text(
            "25.000 TL",
            style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white),
          ),
        )
      ],
    ));
  }
}

import 'package:first_project_flutter/demos/project17/project_17_second_screen.dart';
import 'package:flutter/material.dart';

class Project17 extends StatefulWidget {
  const Project17({super.key});

  @override
  State<Project17> createState() => _Project17State();
}

class _Project17State extends State<Project17> {
  final String backgroundImagePath = "assets/jpg/project_17.jpg";
  final String text1 = "The Most";
  final String text2 = "Delicious";
  final String text3 = "Food";
  final String text4 = "With delicious food and beatiful cold drinks menu,there's some good for everyone";
  final String text5 = "Get Started";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundContainerWithImage(backgroundImagePath: backgroundImagePath),
        Padding(
          padding: const EdgeInsets.all(25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(
              text1,
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.copyWith(color: Colors.white, fontSize: 75, fontWeight: FontWeight.w800),
            ),
            Text(
              text2,
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.copyWith(color: const Color.fromARGB(255, 39, 182, 44), fontSize: 75, fontWeight: FontWeight.w800),
            ),
            Text(
              text3,
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.copyWith(color: Colors.white, fontSize: 75, fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                text4,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButtonWithSizedBox(text5: text5),
            )
          ]),
        ),
      ]),
    );
  }
}

class ElevatedButtonWithSizedBox extends StatelessWidget {
  const ElevatedButtonWithSizedBox({
    Key? key,
    required this.text5,
  }) : super(key: key);

  final String text5;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Project17Second(),
          ));
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: const Color.fromARGB(255, 39, 182, 44)),
        child: Text(
          text5,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class BackgroundContainerWithImage extends StatelessWidget {
  const BackgroundContainerWithImage({
    Key? key,
    required this.backgroundImagePath,
  }) : super(key: key);

  final String backgroundImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                backgroundImagePath,
              ),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [Colors.black.withOpacity(0.9), Colors.black.withOpacity(0.2)],
              end: Alignment.topCenter,
            ),
          ),
        ));
  }
}
//https://assets.materialup.com/uploads/4291c9d6-5c30-4ee3-bcc3-54e533e66344/preview.png

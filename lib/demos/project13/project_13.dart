import 'package:first_project_flutter/101/image_learn.dart';
import 'package:first_project_flutter/demos/project13/project_13_second_page.dart';
import 'package:flutter/material.dart';

class Project13 extends StatefulWidget {
  const Project13({super.key});

  @override
  State<Project13> createState() => _Project13State();
}

class _Project13State extends State<Project13> {
  final String _text = "Loading";
  bool _textShow = false;

  void changeText() {
    setState(() {
      _textShow = !_textShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          elevation: 0,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(children: [
                Text("Hello",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Colors.white, fontWeight: FontWeight.w200, fontSize: 15)),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text("Amelia Rizki",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
                )
              ]),
            ),
          ),
          actions: [
            (_textShow ? const Text("Loading") : const SizedBox.shrink()),
            Padding(
              padding: const EdgeInsets.only(right: 7, top: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(), backgroundColor: const Color.fromARGB(255, 5, 39, 66)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Project13SecondPage(),
                        ));
                  },
                  child: const Icon(Icons.add, color: Colors.white)),
            )
          ],
          leading: const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/1023/983/png-transparent-hammy-film-dreamworks-animation-squirrel-mammal-animals-fauna-thumbnail.png")),
          ),
          backgroundColor: const Color.fromARGB(255, 5, 57, 100),
        ),
      ),
      body: Column(children: [
        Expanded(
            flex: 7,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 5, 57, 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Your Rooms",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: SizedBox(
                          height: 140,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              _AdvancedContainer(
                                  icon: Icon(Icons.table_bar),
                                  text1: "Bathroom",
                                  text2: "5 Devices",
                                  color: Colors.red),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: _AdvancedContainer(
                                    icon: Icon(Icons.chair),
                                    text1: "Living Room",
                                    text2: "4 Devices",
                                    color: Colors.lime),
                              ),
                              _AdvancedContainer(
                                  icon: Icon(Icons.kitchen), text1: "Kitchen", text2: "7 Devices", color: Colors.blue),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: _AdvancedContainer(
                                    text1: "Toilet", text2: "2 Devices", icon: Icon(Icons.wc), color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
            )),
        Expanded(
            flex: 13,
            child: Stack(
              children: [
                Container(
                  color: const Color.fromARGB(255, 5, 57, 100),
                  child: InkWell(
                    onTap: () {
                      changeText();
                      print("object");
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                        image: DecorationImage(image: AssetImage("assets/png/living_room.jpg"), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ))
      ]),
    );
  }
}

class _AdvancedContainer extends StatelessWidget {
  const _AdvancedContainer({
    Key? key,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.color,
  }) : super(key: key);

  final Icon icon;
  final String text1;
  final String text2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(

        // ignore: sort_child_properties_last
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: icon,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  text1,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                text2,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
              )
            ]),
        width: 100,
        height: 140,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)));
  }
}

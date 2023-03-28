import 'package:flutter/material.dart';

class Project9 extends StatefulWidget {
  const Project9({super.key});

  @override
  State<Project9> createState() => _Project9State();
}

class _Project9State extends State<Project9> {
  final _firstText = "Your bookmarks";
  final _text1 = "Cupcake";
  final _text2 = "Dessert";
  final _text3 = "Beginner";
  final _text4 = "Berry Cake";
  final _imageURL = "cupcake.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 26,
                  )),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.align_horizontal_right,
                      color: Colors.black,
                      size: 30,
                    )),
              )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Text(
                _firstText,
                style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: _customCard(text1: _text1, text2: _text2, text3: _text3, imageURL: _imageURL),
            ),
            _customCard(text1: _text4, text2: _text2, text3: _text3, imageURL: _imageURL),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                color: const Color.fromARGB(255, 138, 169, 223),
                child: SizedBox(
                  width: 400,
                  height: 175,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Unlock 25k+",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.black, fontStyle: FontStyle.italic, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text("Premium Recipe",
                            style: Theme.of(context).textTheme.headline5?.copyWith(
                                color: Colors.black, fontStyle: FontStyle.italic, fontWeight: FontWeight.w800)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                            height: 45,
                            width: 110,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 32, 32, 32),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                                onPressed: () {},
                                child: Text("Go Pro",
                                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w700)))),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                label: "",
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ))),
            BottomNavigationBarItem(
                label: "",
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ))),
          ],
        ));
  }
}

class _customCard extends StatelessWidget {
  const _customCard({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.imageURL,
  }) : super(key: key);
  final String text1;
  final String text2;
  final String text3;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      color: const Color.fromARGB(255, 226, 223, 223),
      child: SizedBox(
        height: 125,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Image.asset(
              "assets/png/$imageURL",
              height: 100,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 12),
                  child: Text(
                    text1,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 12),
                  child: Text(
                    text2,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.grey, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 7),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 241, 57, 119),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(text3,
                            style: Theme.of(context).textTheme.headline6?.copyWith(
                                color: Colors.black, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

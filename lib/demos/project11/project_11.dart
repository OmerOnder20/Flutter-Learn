import 'package:flutter/material.dart';

class Project11 extends StatefulWidget {
  const Project11({super.key});

  @override
  State<Project11> createState() => _Project11State();
}

class _Project11State extends State<Project11> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 250, 241, 241),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(35),
          child: AppBar(
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 250, 241, 241),
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 65,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: SizedBox(
                    width: 225,
                    height: 200,
                    child: Text(
                      "Find Your Favorite Food",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 28),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_on_outlined,
                        color: Colors.black,
                        size: 25,
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Container(
                  height: 43,
                  width: 270,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 26)),
                        border: InputBorder.none,
                        labelText: "What do you want to order?",
                        labelStyle: const TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.align_horizontal_left_rounded,
                      color: Colors.black,
                      size: 28,
                    )),
              )
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Text("Popular Restaurant",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w900)),
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: _customContainer(
                    height: 100, width: 120, assetName: "chef_logo", text1: "Vegan Resto", text2: "12 Mins"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: _customContainer(
                  height: 100,
                  width: 120,
                  assetName: "hot_chili",
                  text1: "Hot Chili Food",
                  text2: "8 Mins",
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(children: const [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: _customContainer(
                    height: 75, width: 50, assetName: "burger_king", text1: "Burger King", text2: "12 Mins"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: _customContainer(height: 100, width: 50, assetName: "kfc_logo", text1: "KFC", text2: "12 Mins"),
              )
            ]),
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 250, 241, 241),
          shape: const CircularNotchedRectangle(),
          child: TabBar(indicatorColor: Colors.black, padding: EdgeInsets.zero, tabs: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_filled,
                  color: Colors.black,
                )),
            SizedBox(
                width: 25,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      color: Colors.grey,
                    ))),
            SizedBox(
                width: 25,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_basket_outlined,
                      color: Colors.grey,
                    ))),
            SizedBox(
                width: 25,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_outlined,
                      color: Colors.grey,
                    )))
          ]),
        ),
      ),
    );
  }
}

class _customContainer extends StatelessWidget {
  const _customContainer({
    Key? key,
    required this.assetName,
    required this.text1,
    required this.text2,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String assetName;
  final String text1;
  final String text2;
  final int height;
  final int width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      height: 200,
      width: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/png/$assetName.png",
              height: 100,
              width: 120,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              text1,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text2,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}

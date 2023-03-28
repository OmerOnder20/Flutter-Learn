import 'package:auto_size_text/auto_size_text.dart';
import 'package:first_project_flutter/demos/project17/project_17_2_list.dart';
import 'package:flutter/material.dart';

class Project17Second extends StatefulWidget {
  const Project17Second({super.key});

  @override
  State<Project17Second> createState() => _Project17SecondState();
}

class _Project17SecondState extends State<Project17Second> {
  final String appbarText1 = "Your location";
  final String appbarText2 = "Denizli / Turkey";
  final String circleAvatarImagePath = "assets/png/caillou.png";
  final String bodyImagePath = "assets/jpg/project_17_2.jpg";
  final String bodyText = "Special for you";
  final List<FoodGenre> genreItems = FoodGenre17().foodGenreList;
  final List<Liste> listItems = Liste17().foodList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 32, 32, 32),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              titleSpacing: 0,
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 32, 32, 32),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.location_on_outlined,
                    color: Color.fromARGB(255, 39, 182, 44),
                    size: 32,
                  )),
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    appbarText1,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(appbarText2,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w900)),
                  )
                ]),
              ),
              actions: [
                Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(circleAvatarImagePath),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            )),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          bodyImagePath,
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.22,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  height: 35,
                  width: double.infinity,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: const Color.fromARGB(255, 39, 182, 44)),
                              onPressed: () {},
                              child: AutoSizeText(
                                genreItems[index].name,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w800),
                                maxLines: 1,
                              )),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: genreItems.length),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  bodyText,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: listItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 25, childAspectRatio: 2.4 / 3),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                        child: Column(children: [
                          Expanded(
                              flex: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(listItems[index].foodImagePath), fit: BoxFit.cover),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15), topRight: Radius.circular(15))),
                              )),
                          Expanded(
                              flex: 4,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 48, 47, 47),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8, left: 14),
                                    child: Text(
                                      listItems[index].foodName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber[600],
                                                size: 19,
                                              ),
                                              Text(
                                                listItems[index].foodRate.toString(),
                                                style:
                                                    Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 12),
                                          child: Text(
                                            "${listItems[index].foodPrice}",
                                            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ]),
                              )),
                        ]),
                      );
                    },
                  ),
                ),
              )
            ])));
  }
}

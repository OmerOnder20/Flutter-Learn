import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Project14 extends StatefulWidget {
  const Project14({super.key});

  @override
  State<Project14> createState() => _Project14State();
}

class _Project14State extends State<Project14> {
  List<ListViewBuilder?> items = ListViewBuilderItems().items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
          color: Colors.black,
        ),
        backgroundColor: Colors.amber[300],
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 27,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 75),
            child: Text(
              "Message",
              style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.grey,
            );
          },
          itemBuilder: (context, index) {
            return SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 5),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        "${items[index]?.imagePath}",
                      ),
                    ),
                  ),
                  title: Text("${items[index]?.name}"),
                  subtitle: Text("${items[index]?.description}"),
                  trailing: Column(children: [
                    Text("${items[index]?.hour}"),
                    (items[index]?.online ?? false)
                        ? Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber[900],
                                ),
                                height: 25,
                                width: 25,
                                child: Center(
                                    child: Text(
                                  "${items[index]?.messages}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(color: Colors.white, fontSize: 15),
                                ))),
                          )
                        : const SizedBox.shrink()
                  ]),
                ));
          },
          itemCount: items.length),
    );
  }
}

class ListViewBuilder {
  final String imagePath;
  final String name;
  final String description;
  final String hour;
  final bool online;
  final int messages;

  ListViewBuilder(this.imagePath, this.name, this.description, this.hour, this.online, this.messages);
}

class ListViewBuilderItems {
  late final List<ListViewBuilder> items;
  ListViewBuilderItems() {
    items = [
      ListViewBuilder("assets/png/caillou.png", "Caillou", "Caillou's House ", "2.34 PM", false, 0),
      ListViewBuilder("assets/png/chef_food.png", "Chef Food", "Chef Food's Restaurant", "5.42 PM", true, 6),
      ListViewBuilder("assets/png/welcome_slide1.jpg", "Ömer Faruk Önder", "Ömer's House", "6.25 PM", false, 0),
      ListViewBuilder("assets/png/hot_chili.png", "Hot Chili", "Hot Chili's Restaurant", "7.15 PM", true, 3),
      ListViewBuilder("assets/png/welcome_slide2.jpg", "Arife Önder", "Arife's House", "8.53 PM", false, 0),
      ListViewBuilder("assets/png/welcome_slide3.jpg", "Hüsamettin Önder", "Hüsamettin's House", "Unknown", true, 7),
      ListViewBuilder("assets/png/welcome_slide1.jpg", "Chef", "Chef's Restaurant", "1.35 PM", true, 1),
    ];
  }
}

import 'package:flutter/material.dart';

class Project1 extends StatelessWidget {
  const Project1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SizedBox(
            height: 60,
            child: Image.network("https://www.freepnglogos.com/uploads/starbucks-logo-png-transparent-0.png")),
        leading:
            IconButton(color: Colors.black, onPressed: () {}, icon: const Icon(Icons.align_horizontal_left_rounded)),
        actions: [IconButton(color: Colors.black, onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 5),
            child: Container(
              width: 250,
              child: const Text("Our way of loving you back",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontSize: 28,
                  )),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 202, 201, 201),
                hintText: "Search",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
              ))),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 202, 201, 201)),
                      onPressed: () {},
                      child: Text("All")),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 202, 201, 201)),
                      onPressed: () {},
                      child: const Text("Coffee")),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 202, 201, 201)),
                    onPressed: () {},
                    child: const Text("Tea")),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 202, 201, 201)),
                      onPressed: () {},
                      child: const Text("Juice")),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 0),
            child: Card(
              color: Colors.white,
              margin: const EdgeInsets.only(top: 30, left: 2),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: SizedBox(
                height: 300,
                width: 200,
                child: Image.asset(
                  "assets/png/coffee.jpeg",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

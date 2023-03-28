import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: const Text("Save")),
          const ElevatedButton(onPressed: null, child: Text("Data")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red, shape: const CircleBorder(), padding: EdgeInsets.all(10)),
              onPressed: () {},
              child: const Text("Data")),
          InkWell(onTap: () {}, child: const Text("DATA")),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, right: 50, left: 50),
              child: Text(
                "Place Bid",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}





//Borders
//CircleBorder(), RoundedRectangleBorder()
import 'package:flutter/material.dart';

class Project4 extends StatelessWidget {
  const Project4({super.key});
  final String _title = "My Profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.align_horizontal_left_sharp,
          color: Colors.black,
        ),
        title: Text(
          "My Profile",
          style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(children: [
        Expanded(
            flex: 3,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.network(
                  "https://www.pngarts.com/files/8/Aesthetic-Anime-Girl-PNG-Transparent-Image.png",
                  height: 100,
                  width: 150,
                ),
              ),
            )),
        _textFieldItems(labelText: "Name"),
        _textFieldItems(
          labelText: "Phone No",
        ),
        _textFieldItems(labelText: "Gender"),
        _textFieldItems(labelText: "Date Of Birth"),
        _textFieldItems(labelText: "Language"),
        Expanded(
            flex: 2,
            child: Container(
              child: ElevatedButton(onPressed: () {}, child: Text("EDIT PROFILE")),
            ))
      ]),
    );
  }
}

class _textFieldItems extends StatelessWidget {
  const _textFieldItems({
    Key? key,
    required this.labelText,
  }) : super(key: key);
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: SizedBox(
            child: TextField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
              labelText: labelText),
        )));
  }
}

//Hepsini Column la yapabilirdin.
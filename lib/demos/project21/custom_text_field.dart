import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  final String text = "Search all";

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(text,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey, fontSize: 18, fontStyle: FontStyle.italic, fontWeight: FontWeight.w400)),
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.list_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(
              Icons.remove_circle_sharp,
              color: Colors.green,
              size: 26,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.5, color: Color.fromARGB(255, 219, 217, 217)),
              borderRadius: BorderRadius.circular(13))),
    );
  }
}

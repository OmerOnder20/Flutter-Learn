import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Center(
              child: Image.asset(
                "assets/jpg/cat.jpg",
                height: 300,
                width: 300,
              ),
            ),
          ),
        ),
        const Text(
          textAlign: TextAlign.center,
          "Find your favorite pet close to you",
          style: TextStyle(color: Colors.black, fontSize: 37, fontWeight: FontWeight.w800),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            textAlign: TextAlign.center,
            "Now it's easier than ever to find a friend or a new replacement for the family",
            style: TextStyle(wordSpacing: 4, color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SizedBox(
            height: 50,
            width: 230,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 233, 145, 13)),
                onPressed: widget.onPressed,
                child: const Text(
                  "Get started",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
                )),
          ),
        )
      ]),
    );
  }
}

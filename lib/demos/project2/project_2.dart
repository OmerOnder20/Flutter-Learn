import 'dart:ui';

import 'package:flutter/material.dart';

class Project2 extends StatefulWidget {
  const Project2({super.key});

  @override
  State<Project2> createState() => _Project2State();
}

class _Project2State extends State<Project2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 115, horizontal: 125),
        child: Column(
          children: [
            SizedBox(child: Image.asset("assets/png/clover_with_3_leafs.png")),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "treeri",
                style: TextStyle(color: Color.fromARGB(255, 36, 141, 39), fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                width: 300,
                child: TextField(
                    style: TextStyle(fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 119, 214, 122),
                        filled: true,
                        labelText: "Username",
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ))),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                style: TextStyle(fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 119, 214, 122),
                    filled: true,
                    labelText: "Password",
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      minimumSize: Size(300, 40),
                      backgroundColor: Color.fromARGB(255, 36, 141, 39))),
            )
          ],
        ),
      ),
    );
  }
}

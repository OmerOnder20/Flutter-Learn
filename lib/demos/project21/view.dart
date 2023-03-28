import 'package:flutter/material.dart';

import 'avatar_container.dart';
import 'custom_stack.dart';
import 'custom_text_field.dart';
import 'list_view_builder.dart';

class Project21 extends StatefulWidget {
  const Project21({super.key});

  @override
  State<Project21> createState() => _Project21State();
}

class _Project21State extends State<Project21> {
  final String appBarText1 = "Welcome back";
  final String appBarText2 = "Jashon Smith";
  final String rowText1 = "Top Hits Hindi";
  final String rowText2 = "View all";

  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 35, top: 30),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appBarText1,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: const Color.fromARGB(255, 53, 53, 53),
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(appBarText2,
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: const Color.fromARGB(255, 39, 39, 39),
                            fontSize: 29,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, right: 20),
                  child: AvatarContainer(),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 30),
              child: SizedBox(
                height: 80,
                child: CustomTextField(controller: textEditingController),
              ),
            ),
            const CustomStackWithImage(),
            Padding(
              padding: const EdgeInsets.only(top: 35, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    rowText1,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  Text(rowText2,
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          color: const Color.fromARGB(255, 114, 113, 113), fontSize: 14, fontWeight: FontWeight.w500))
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              child: const ListViewBuilderWithImage(),
            ),
          ]),
        ),
      ),
    );
  }
}

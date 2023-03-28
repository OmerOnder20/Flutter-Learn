import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewModel/project_26_view_model.dart';

class Project26View extends StatefulWidget {
  const Project26View({super.key});

  @override
  State<Project26View> createState() => _Project26ViewState();
}

class _Project26ViewState extends State<Project26View> {
  @override
  void initState() {
    super.initState();
    Provider.of<Provider26>(context, listen: false).fetch26Items();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Center(
          child: SizedBox(
              width: 300,
              height: 300,
              child: ListView.builder(
                itemCount: context.watch<Provider26>().items26?.length,
                itemBuilder: (context, index) => Text(
                  context.watch<Provider26>().items26?[index].name ?? "",
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              )),
        ),
      ),
    );
  }
}

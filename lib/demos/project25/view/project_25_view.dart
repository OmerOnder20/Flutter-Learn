import 'package:flutter/material.dart';

import '../card/card_25.dart';
import '../viewModel/project_25_view_model.dart';

class Project25View extends StatefulWidget {
  const Project25View({super.key});

  @override
  State<Project25View> createState() => _Project25ViewState();
}

class _Project25ViewState extends Project25ViewModel {
  final String text = "Project 25";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(text),
        ),
        body: isLoading ? const Center(child: CircularProgressIndicator()) : customLWB());
  }

  ListView customLWB() {
    return ListView.builder(
      itemCount: items?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        return Card25(
          model: items?[index],
        );
      },
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../model/project_25_model.dart';

class Card25 extends StatelessWidget {
  final Project25Model? model;

  const Card25({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(model?.id.toString() ?? ""),
        ),
        title: Text(model?.body ?? ""),
      ),
    );
  }
}

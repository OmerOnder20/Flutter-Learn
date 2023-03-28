import 'package:first_project_flutter/product/navigator/navigator_routes.dart';
import 'package:flutter/material.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({super.key});

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          Navigator.of(context).pushNamed(NavigateRoutes.detail.withParaf, arguments: "12345");
        },
        child: const Icon(Icons.arrow_forward_outlined),
      ),
      appBar: AppBar(
        title: Text(toString()),
      ),
    );
  }
}

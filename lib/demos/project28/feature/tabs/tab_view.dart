import 'package:flutter/material.dart';

import '../basket/basket_view.dart';
import '../products/products_view.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: buildBottomAppBar(),
          body: TabBarView(children: [ProductsView(), BasketView()]),
        ));
  }
}

class buildBottomAppBar extends StatelessWidget {
  const buildBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.shopping_basket_rounded),
          )
        ],
        labelColor: Colors.black,
      ),
    );
  }
}

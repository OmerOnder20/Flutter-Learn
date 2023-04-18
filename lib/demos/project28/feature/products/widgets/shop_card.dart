import 'package:first_project_flutter/demos/project28/product/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../product/model/product.dart';

class ShopCard extends StatelessWidget {
  final Product product;
  const ShopCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        trailing: IconButton(
            onPressed: () {
              // context.read<UserController>().add(product);
            },
            icon: const Icon(
              Icons.shopping_basket_outlined,
              color: Colors.grey,
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2, child: Image.network(product.thumbnail)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconButton(
                        onPressed: () {
                          context.read<UserController>().incrementProduct(product);
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.black,
                        )),
                  ),
                  Text("${context.watch<UserController>().basketProducts[product] ?? 0}"),
                  Expanded(
                    child: IconButton(
                        onPressed: () {
                          context.read<UserController>().deincrementProduct(product);
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
        subtitle: Wrap(
          spacing: 10,
          children: [Text(product.title), Text(product.id.toString())],
        ),
      ),
    );
  }
}

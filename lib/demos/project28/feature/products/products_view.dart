import 'package:first_project_flutter/demos/project28/feature/basket/basket_view.dart';
import 'package:first_project_flutter/demos/project28/feature/products/products_view_model.dart';
import 'package:first_project_flutter/demos/project28/feature/products/widgets/shop_card.dart';
import 'package:first_project_flutter/demos/project28/product/model/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../product/controller/user_controller.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProductsViewModel>().productItems;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BasketView(),
              ));
            },
            icon: const Icon(Icons.turn_right)),
        actions: const [buildActionChip()],
      ),
      body: ListView.builder(
        itemCount: provider.length,
        itemBuilder: (BuildContext context, int index) {
          return ShopCard(
            product: Product(
                id: provider[index].id,
                title: provider[index].title,
                description: provider[index].description,
                price: provider[index].price,
                discountPercentage: provider[index].discountPercentage,
                rating: provider[index].rating,
                stock: provider[index].stock,
                brand: provider[index].brand,
                category: provider[index].category,
                thumbnail: provider[index].thumbnail),
          );
        },
      ),
    );
  }
}

class buildActionChip extends StatelessWidget {
  const buildActionChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      avatar: const Icon(
        Icons.shopping_basket_outlined,
        color: Colors.green,
      ),
      label: Text("${context.watch<UserController>().basketTotalMoney} TL"),
      onPressed: () {},
    );
  }
}

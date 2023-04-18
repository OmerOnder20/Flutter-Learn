import 'package:first_project_flutter/demos/project28/product/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BasketView extends StatefulWidget {
  const BasketView({super.key});

  @override
  State<BasketView> createState() => _BasketViewState();
}

class _BasketViewState extends State<BasketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Expanded(
            child: BasketLvb(),
          ),
          ElevatedButton(
              onPressed: context.watch<UserController>().basketTotalMoney > 100 ? () {} : null,
              child: const Text("Buy"))
        ],
      ),
    );
  }
}

class BasketLvb extends StatelessWidget {
  const BasketLvb({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: context.watch<UserController>().basketItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Image.network(context.watch<UserController>().basketItems[index].thumbnail),
            Row(
              children: [
                const Text("Adet"),
                Text(context
                    .watch<UserController>()
                    .basketProducts[context.watch<UserController>().basketItems[index]]
                    .toString()),
              ],
            ),
            Row(
              children: [
                const Text("Birim fiyat"),
                Text(context.watch<UserController>().basketItems[index].id.toString()),
              ],
            ),
            Row(
              children: [
                const Text("Toplam fiyat = "),
                Text((context
                            .watch<UserController>()
                            .basketProducts[context.watch<UserController>().basketItems[index]]! *
                        context.watch<UserController>().basketItems[index].id)
                    .toString()),
              ],
            )
          ],
        );
      },
    );
  }
}

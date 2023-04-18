import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewModel/project_25_provider.dart';

class ProviderView extends StatefulWidget {
  const ProviderView({super.key});

  @override
  State<ProviderView> createState() => _ProviderViewState();
}

class _ProviderViewState extends State<ProviderView> {
  @override
  void initState() {
    super.initState();
    Provider.of<Provider25>(context, listen: false).fetch25Items();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
            width: 300,
            height: 300,
            child: ListView.builder(
              itemCount: context.watch<Provider25>().items25?.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(context.watch<Provider25>().items25?[index]?.body ?? ""),
              ),
            )),
      ),
    );
  }
}

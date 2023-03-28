import 'package:flutter/material.dart';

//***** Diğer navigator daha basit onu kullan.Gerekmedikçe bunu kullanma!

class NavigateHomeDetailView extends StatefulWidget {
  const NavigateHomeDetailView({super.key, this.id});
  final String? id;

  @override
  State<NavigateHomeDetailView> createState() => _NavigateHomeDetailViewState();
}

class _NavigateHomeDetailViewState extends State<NavigateHomeDetailView> {
  String? _id;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final modelId = ModalRoute.of(context)?.settings.arguments;
      print(modelId);
      _id = widget.id ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_id ?? ""),
      ),
    );
  }
}

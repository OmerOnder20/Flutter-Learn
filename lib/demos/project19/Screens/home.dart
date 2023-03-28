import 'package:first_project_flutter/demos/project19/core/auth_manager.dart';
import 'package:first_project_flutter/demos/project19/core/cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../user_model.dart';

class Home19 extends StatefulWidget {
  @override
  State<Home19> createState() => _Home19State();
}

class _Home19State extends State<Home19> with CacheManagerToken {
  String token = "";

  late UserModel? userModel;

  Future<void> getTokenCache() async {
    token = await getToken() ?? "";
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    userModel = context.read<AuthManager>().model;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(token),
        actions: [
          Text(
            "${userModel?.name}",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.white),
          )
        ],
      ),
      body: CircleAvatar(backgroundImage: AssetImage(userModel?.imageUrl ?? "")),
    );
  }
}

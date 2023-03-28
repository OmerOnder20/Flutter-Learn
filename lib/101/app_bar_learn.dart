import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = "Welcome Learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        leadingWidth: 25,
        //actionsIconTheme: IconThemeData(color: Colors.blue, size: 30),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.mark_email_read)),
          const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}

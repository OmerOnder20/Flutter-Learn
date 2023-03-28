import 'package:first_project_flutter/demos/project27_202yebak/shared_manager_27.dart';
import 'package:flutter/material.dart';

class Project27 extends StatefulWidget {
  const Project27({super.key});

  @override
  State<Project27> createState() => _Project27State();
}

class _Project27State extends State<Project27> {
  late final SharedManager27 _manager27;
  int _currentValue = 0;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    getValues();
    _manager27 = SharedManager27();
  }

  void _changedLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> getValues() async {
    // final prefs = await SharedPreferences.getInstance();
    // final int? counter = prefs.getInt("counter");
    _onChangeValue(_manager27.getString(SharedKey.counter).toString());
  }

  void _onChangeValue(String value) {
    final value0 = int.tryParse(value);
    if (value0 != null) {
      setState(() {
        _currentValue = value0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_currentValue.toString()),
        actions: [
          Visibility(
              visible: _isLoading,
              child: const CircularProgressIndicator(
                color: Colors.black,
              ))
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.save),
            onPressed: () async {
              _changedLoading();
              await _manager27.saveString(SharedKey.counter, _currentValue.toString());
              _changedLoading();
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () async {
              _changedLoading();
              _manager27.removeItems(SharedKey.counter);
              _changedLoading();
            },
          )
        ],
      ),
      body: TextField(
        onChanged: (value) {
          _onChangeValue(value);
        },
      ),
    );
  }
}

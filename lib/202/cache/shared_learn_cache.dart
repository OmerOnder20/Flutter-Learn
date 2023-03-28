import 'package:first_project_flutter/202/cache/shared_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateful<SharedLearn> {
  int _currentValue = 0;

  @override
  void initState() {
    super.initState();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    final prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt('counter');
    _onChangedValue(counter.toString());
  }

  void _onChangedValue(String value) {
    final _value = int.tryParse(value);

    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _saveValueButton(),
          _removeValueButton(),
        ],
      ),
      appBar: AppBar(
        actions: [
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                )
              : const SizedBox.shrink()
        ],
        title: Text(_currentValue.toString()),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangedValue(value);
            },
          ),
          Expanded(
            child: _userListViewBuilder(),
          )
        ],
      ),
    );
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      onPressed: () async {
        changeLoading();
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('counter', _currentValue);
        changeLoading();
      },
      child: const Icon(Icons.save),
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
      onPressed: () async {
        changeLoading();
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove('counter');
        changeLoading();
      },
      child: const Icon(Icons.remove_circle),
    );
  }
}

class _userListViewBuilder extends StatelessWidget {
  _userListViewBuilder({
    Key? key,
  }) : super(key: key);
  final List<User> users = UserItems().users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(users[index].name),
            subtitle: Text(users[index].description),
            trailing: Text(users[index].url,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(decoration: TextDecoration.underline)),
          ),
        );
      },
    );
  }
}

class User {
  final String name;
  final String description;
  final String url;
  User(this.name, this.description, this.url);
}

//Dummy kullanımı!
//İyi bil

class UserItems {
  late final List<User> users;
  UserItems() {
    users = [
      User("Omer1", "Omer 20", "vb10.dev"),
      User("Omer2", "Omer 200", "vb10.dev"),
      User("Omer3", "Omer 2000", "vb10.dev")
    ];
  }
}

//Generic
//Daha sonra anlatacak,kullanımı böyle.
abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}

// initState in içine async ve await yazamazsın çünkü bekleyemez. initState ilk çalışan constructorla birlikte.
// getDefaultValues() fonksiyonunu çağırmak için (ayrıca projenin en başında çağırmak için) initState kullandık ve içine koyduk.
// getDefaultValues() fonksiyonu ile datayı cache'e yani önbelleğe kaydetme işlemi yapıyoruz.
// _onChangedValue(counter.toString()); bunu ise yukarıdaki "final int? counter = prefs.getInt('counter');" bu saklama işini
// tanımlanan counter ı kullanıyoruz.

 
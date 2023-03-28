import 'package:shared_preferences/shared_preferences.dart';

enum SharedKey { counter }

class SharedManager27 {
  Future<void> saveString(SharedKey key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key.name, value);
  }

  Future<String?> getString(SharedKey key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key.name);
  }

  Future<bool> removeItems(SharedKey key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove(key.name);
  }
}

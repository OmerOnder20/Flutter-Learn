import 'package:shared_preferences/shared_preferences.dart';

class CacheManagerToken {
  Future<bool> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(CacheManagerKey.TOKEN.name, token);
    return true;
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(CacheManagerKey.TOKEN.name);
  }
}

enum CacheManagerKey { TOKEN }

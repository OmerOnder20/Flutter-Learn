import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { counter }
//Enumeration yaparak keysleri kafaya göre sallamasyon değil özelleştirdik,belli bir kalıba soktuk.

class SharedManager {
  Future<void> saveString(SharedKeys key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key.name, value);
  }

  Future<bool> removeItem(SharedKeys key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove(key.name);
  }

  Future<String?> getString(SharedKeys key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key.name);
  }
}

//Mesela string değil de int gelirse direkt buraya eklersin.
//Burayı anla geç sonradan gelişmek için tekrardan okursun.Şimdilik kodların aynısını yaz!
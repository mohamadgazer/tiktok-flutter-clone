import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  Future<void> cacheLocale(String val) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("Locale", val);
  }

  Future<String> getLocale() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final casheData = sharedPreferences.getString("Locale");
    if (casheData != null) {
      return casheData;
    } else {
      return "en";
    }
  }
}

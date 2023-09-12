import 'package:shared_preferences/shared_preferences.dart';

/// App-storage class with singleton pattern
class AppStorage {
  final _login = 'login';

  SharedPreferences? _prefs;

  AppStorage._ctor();

  static final _instance = AppStorage._ctor();

  factory AppStorage() {
    return _instance;
  }

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  setLogin(bool value) {
    return _prefs?.setBool(_login, value);
  }

  get isLogin {
    return _prefs?.getBool(_login) ?? false;
  }
}

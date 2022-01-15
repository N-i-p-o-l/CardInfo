import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsNotifier extends ChangeNotifier {
  SettingsNotifier() {
    _loadFromPreferences();
  }

  static const String darkModeKey = 'dark_mode_key';

  late SharedPreferences _preferences;

  bool _darkMode = false;
  bool get darkMode => _darkMode;

  Future<void> _initialPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> _savePreferences() async {
    _preferences.setBool(darkModeKey, _darkMode);
  }

  Future<void> _loadFromPreferences() async {
    await _initialPreferences();
    _darkMode = _preferences.getBool(darkModeKey) ?? false;
    notifyListeners();
  }

  void toggleDarkMode() {
    _darkMode = !_darkMode;
    _savePreferences();
    notifyListeners();
  }
}

import 'package:puzzle_hack/src/domain/repositories/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

const darkModeKey = 'darkModeKey';

class SettingsRepositoryImpl implements SettingsRepository {
  final SharedPreferences _preferences;

  SettingsRepositoryImpl(this._preferences);

  @override
  bool get isDarkMode => _preferences.getBool(darkModeKey) ?? false;

  @override
  Future<void> updateDarkMode(bool isDark) {
    return _preferences.setBool(darkModeKey, isDark);
  }
}

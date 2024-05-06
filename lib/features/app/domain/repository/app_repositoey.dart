abstract class AppRepository {
  String getLanguage();

  int getTheme();

  Future<void> changeTheme(int color);

  Future<void> setLanguage(String value);
}

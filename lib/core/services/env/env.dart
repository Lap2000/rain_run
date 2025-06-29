class AppEnv {
  AppEnv._();

  final String appName = const String.fromEnvironment('APP_NAME');
  final String appFlavor = const String.fromEnvironment('APP_FLAVOR');
  final String appWebLink = const String.fromEnvironment('APP_WEB_LINK');
  final String appSuffix = const String.fromEnvironment('APP_ID_SUFFIX');
  final String apiEndPoint = const String.fromEnvironment('APP_API_ENDPOINT');
  final String openWeatherMapApiKey = const String.fromEnvironment(
    'OPENWEATHERMAP_API_KEY',
  );

  static final AppEnv instance = AppEnv._();
}

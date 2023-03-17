// void main() {
//   final simulatedResult = processRequest(returnError: true);
//   throw (simulatedResult.error!);
//   // print(simulatedResult.value is String);
// }

// class AppConfig {
//   final String apiUrl;
//   final bool useHttps;

//   AppConfig({
//     required this.apiUrl,
//     this.useHttps = true,
//   });
// }

class AppConfig {
  // Un campo estático que almacena la instancia de la clase
  static AppConfig? _instance;

  // Los campos que teníamos antes y necesitamos para nuestra clase
  final String apiUrl;
  final bool useHttps;

  factory AppConfig({required String apiUrl, required bool useHttps}) {
    // Si no existe una instancia, creamos una
    _instance ??= AppConfig._internal(
      apiUrl: apiUrl,
      useHttps: useHttps,
    );

    // Devolvemos la instancia
    return _instance!;
  }

  // Un constructor privado para que no se pueda crear una instancia de
  // AppConfig
  // Desde afuera, no pueden llamar a AppConfig._internal()
  AppConfig._internal({
    required this.apiUrl,
    this.useHttps = true,
  });
}

void main() {
  final config1 = AppConfig(apiUrl: 'https://example.com', useHttps: true);
  final config2 = AppConfig(apiUrl: 'https://example.com', useHttps: true);
  final config3 = AppConfig(apiUrl: 'https://example.com', useHttps: true);

  assert(identical(config1, config2));
  assert(identical(config2, config3));

  assert(config1.apiUrl == 'https://example.com');
  assert(config2.apiUrl == 'https://example.com');
  assert(config3.apiUrl == 'https://example.com');

  assert(config1.useHttps);
  assert(config2.useHttps);
  assert(config3.useHttps);
}

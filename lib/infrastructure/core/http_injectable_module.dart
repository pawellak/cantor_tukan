import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@module
abstract class HttpInjectableModule {
  @singleton
  Client get httpClient => Client();
}

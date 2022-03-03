import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kantor_tukan/domain/internet/i_internet_connection_checker.dart';

@Singleton(as: IInternetConnectionChecker)
class InternetChecker implements IInternetConnectionChecker {
  final InternetConnectionChecker internetConnectionChecker;

  InternetChecker(this.internetConnectionChecker);

  @override
  Future<bool> hasConnection() async {
    return internetConnectionChecker.hasConnection;
  }
}

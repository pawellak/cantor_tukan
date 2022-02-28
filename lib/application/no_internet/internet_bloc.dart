import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'internet_event.dart';

part 'internet_state.dart';

part 'internet_bloc.freezed.dart';

@injectable
class NoInternetBloc extends Bloc<NoInternetEvent, NoInternetState> {
  final InternetConnectionChecker _internetConnectionChecker;

  NoInternetBloc(this._internetConnectionChecker) : super(NoInternetState.initial()) {
    on<NoInternetEvent>((event, emit) {
      event.map(checkConnection: _checkConnection);
    });
  }

  void _checkConnection(_) async {
    final bool isConnected = await _internetConnectionChecker.hasConnection;
    emit(state.copyWith(isConnected: isConnected));
  }
}

// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kantor_tukan/domain/internet/i_internet_connection_checker.dart';

part 'internet_event.dart';

part 'internet_state.dart';

part 'internet_bloc.freezed.dart';

@injectable
class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final IInternetConnectionChecker _internetConnectionChecker;

  InternetBloc(this._internetConnectionChecker) : super(InternetState.initial()) {
    on<InternetEvent>((event, emit) {
      event.map(checkConnection: _checkConnection, setNoInternetConnection: _setNoInternetConnection);
    });
  }

  void _checkConnection(_) async {
    emit(state.copyWith(isConnected: state.isConnected, isSubmitting: true));
    final bool isConnected = await _internetConnectionChecker.hasConnection();
    emit(state.copyWith(isConnected: isConnected, isSubmitting: false));
  }

  void _setNoInternetConnection(_SetNoInternetConnection value) {
    emit(state.copyWith(isConnected: false, isSubmitting: false));
  }
}

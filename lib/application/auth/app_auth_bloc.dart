// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';

part 'app_auth_bloc.freezed.dart';

part 'app_auth_event.dart';

part 'app_auth_state.dart';

@injectable
class AppAuthBloc extends Bloc<AppAuthEvent, AppAuthState> {
  final IAuthFacade _authFacade;

  AppAuthBloc(this._authFacade) : super(const AppAuthState.initial()) {
    on<AppAuthEvent>((event, emit) {
      event.map(
        resetState: _resetState,
        authCheckRequested: _authCheckRequested,
        signedOut: _signedOut,
      );
    });
  }

  void _authCheckRequested(_) async {
    var userOption = await _authFacade.getSignedInUser();
    AppAuthState authOrNotAuth = userOption.fold(
      () => const AppAuthState.unauthenticated(),
      (_) => const AppAuthState.authenticated(),
    );
    emit(authOrNotAuth);
  }

  void _signedOut(_) async {
    await _authFacade.signOutGoogleAndFirebase();
    emit(
      const AppAuthState.unauthenticated(),
    );
  }

  void _resetState(ResetState value) {
    emit(
      const AppAuthState.initial(),
    );
  }
}

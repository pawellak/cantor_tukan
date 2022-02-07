import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';

part 'app_auth_event.dart';

part 'app_auth_state.dart';

part 'app_auth_bloc.freezed.dart';

@injectable
class AppAuthBloc extends Bloc<AppAuthEvent, AppAuthState> {
  final IAuthFacade _authFacade;

  AppAuthBloc(this._authFacade) : super(const AppAuthState.initial()) {
    on<AppAuthEvent>(
      (event, emit) {
        event.map(authCheckRequested: (_) async {
          var userOption = await _authFacade.getSignedInUser();
          AppAuthState authOrNotAuth = userOption.fold(
              () => const AppAuthState.unauthenticated(),
              (_) => const AppAuthState.authenticated());
          emit(authOrNotAuth);
        }, signedOut: (_) async {
          await _authFacade.signOutGoogleAndFirebase();
          emit(const AppAuthState.unauthenticated());
        });
      },
    );
  }
}

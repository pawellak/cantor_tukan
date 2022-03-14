// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i14;

import 'application/auth/app_auth_bloc.dart' as _i18;
import 'application/auth/register/register_form_bloc.dart' as _i22;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import 'application/exchange_form/exchange_rate_bloc.dart' as _i24;
import 'application/internet/internet_bloc.dart' as _i21;
import 'application/transaction/transaction_actor/transaction_actor_bloc.dart'
    as _i16;
import 'application/transaction/transaction_form/transaction_form_bloc.dart'
    as _i23;
import 'application/transaction/transaction_watcher/transaction_watcher_bloc.dart'
    as _i17;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/exchange_rate/i_cantor_remote_data_source.dart' as _i10;
import 'domain/internet/i_internet_connection_checker.dart' as _i19;
import 'domain/transaction/i_transaction_repository.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/auth/firebase_user_mapper.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i26;
import 'infrastructure/core/http_injectable_module.dart' as _i25;
import 'infrastructure/core/internet_injectable_module.dart' as _i27;
import 'infrastructure/exchange_rate/cantor_remote_data_source.dart' as _i11;
import 'infrastructure/internet/internet_checker.dart' as _i20;
import 'infrastructure/transaction/transaction_repository.dart' as _i13;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpInjectableModule = _$HttpInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final internetInjectableModule = _$InternetInjectableModule();
  gh.singleton<_i3.Client>(httpInjectableModule.httpClient);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestoreAuth);
  gh.lazySingleton<_i6.FirebaseUserMapper>(() => _i6.FirebaseUserMapper());
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(
      () => _i9.FirebaseAuthFacade(get<_i4.FirebaseAuth>(),
          get<_i7.GoogleSignIn>(), get<_i6.FirebaseUserMapper>()),
      registerFor: {_prod});
  gh.singleton<_i10.ICantorRemoteDataSource>(
      _i11.CantorRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i12.ITransactionRepository>(
      () => _i13.TransactionRepository(get<_i5.FirebaseFirestore>()));
  gh.singleton<_i14.InternetConnectionChecker>(
      internetInjectableModule.internetConnection);
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i16.TransactionActorBloc>(
      () => _i16.TransactionActorBloc(get<_i12.ITransactionRepository>()));
  gh.factory<_i17.TransactionWatcherBloc>(
      () => _i17.TransactionWatcherBloc(get<_i12.ITransactionRepository>()));
  gh.factory<_i18.AppAuthBloc>(() => _i18.AppAuthBloc(get<_i8.IAuthFacade>()));
  gh.singleton<_i19.IInternetConnectionChecker>(
      _i20.InternetChecker(get<_i14.InternetConnectionChecker>()));
  gh.factory<_i21.InternetBloc>(
      () => _i21.InternetBloc(get<_i19.IInternetConnectionChecker>()));
  gh.factory<_i22.RegisterFormBloc>(() => _i22.RegisterFormBloc(
      get<_i8.IAuthFacade>(), get<_i19.IInternetConnectionChecker>()));
  gh.factory<_i23.TransactionFormBloc>(() => _i23.TransactionFormBloc(
      get<_i12.ITransactionRepository>(),
      get<_i19.IInternetConnectionChecker>()));
  gh.factory<_i24.ExchangeRateBloc>(() => _i24.ExchangeRateBloc(
      get<_i10.ICantorRemoteDataSource>(),
      get<_i19.IInternetConnectionChecker>()));
  return get;
}

class _$HttpInjectableModule extends _i25.HttpInjectableModule {}

class _$FirebaseInjectableModule extends _i26.FirebaseInjectableModule {}

class _$InternetInjectableModule extends _i27.InternetInjectableModule {}

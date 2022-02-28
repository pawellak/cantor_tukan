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

import 'application/auth/app_auth_bloc.dart' as _i20;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i16;
import 'application/exchange_form/exchange_rate_bloc.dart' as _i21;
import 'application/no_internet/internet_bloc.dart' as _i15;
import 'application/transaction/transaction_actor/transaction_actor_bloc.dart'
    as _i17;
import 'application/transaction/transaction_form/transaction_form_bloc.dart'
    as _i18;
import 'application/transaction/transaction_watcher/transaction_watcher_bloc.dart'
    as _i19;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/exchange_rate/i_cantor_remote_data_source.dart' as _i10;
import 'domain/transaction/i_transaction_repository.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/auth/firebase_user_mapper.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i23;
import 'infrastructure/core/http_injectable_module.dart' as _i22;
import 'infrastructure/exchange_rate/cantor_remote_data_source.dart' as _i11;
import 'infrastructure/internet/internet_module.dart' as _i24;
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
  final internetConnectionModule = _$InternetConnectionModule();
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
      internetConnectionModule.internetConnection);
  gh.factory<_i15.NoInternetBloc>(
      () => _i15.NoInternetBloc(get<_i14.InternetConnectionChecker>()));
  gh.factory<_i16.SignInFormBloc>(
      () => _i16.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i17.TransactionActorBloc>(
      () => _i17.TransactionActorBloc(get<_i12.ITransactionRepository>()));
  gh.factory<_i18.TransactionFormBloc>(
      () => _i18.TransactionFormBloc(get<_i12.ITransactionRepository>()));
  gh.factory<_i19.TransactionWatcherBloc>(
      () => _i19.TransactionWatcherBloc(get<_i12.ITransactionRepository>()));
  gh.factory<_i20.AppAuthBloc>(() => _i20.AppAuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i21.ExchangeRateBloc>(
      () => _i21.ExchangeRateBloc(get<_i10.ICantorRemoteDataSource>()));
  return get;
}

class _$HttpInjectableModule extends _i22.HttpInjectableModule {}

class _$FirebaseInjectableModule extends _i23.FirebaseInjectableModule {}

class _$InternetConnectionModule extends _i24.InternetConnectionModule {}

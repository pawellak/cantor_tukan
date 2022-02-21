// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i13;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/app_auth_bloc.dart' as _i18;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i14;
import 'application/exchange_form/exchange_rate_bloc.dart' as _i19;
import 'application/transaction/transaction_actor/transaction_actor_bloc.dart'
    as _i15;
import 'application/transaction/transaction_form/transaction_form_bloc.dart'
    as _i16;
import 'application/transaction/transaction_watcher/transaction_watcher_bloc.dart'
    as _i17;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/exchange_rate/i_cantor_remote_data_source.dart' as _i9;
import 'domain/transaction/i_transaction_repository.dart' as _i11;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/auth/firebase_user_mapper.dart' as _i5;
import 'infrastructure/core/firebase_injectable_module.dart' as _i21;
import 'infrastructure/core/http_injectable_module.dart' as _i20;
import 'infrastructure/exchange_rate/cantor_remote_data_source.dart' as _i10;
import 'infrastructure/transaction/transaction_repository.dart' as _i12;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpInjectableModule = _$HttpInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.Client>(() => httpInjectableModule.httpClient);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseUserMapper>(() => _i5.FirebaseUserMapper());
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.FirebaseAuthFacade(get<_i4.FirebaseAuth>(),
          get<_i6.GoogleSignIn>(), get<_i5.FirebaseUserMapper>()),
      registerFor: {_prod});
  gh.singleton<_i9.ICantorRemoteDataSource>(_i10.CantorRemoteDataSource());
  gh.lazySingleton<_i11.ITransactionRepository>(
      () => _i12.TransactionRepository(get<_i13.FirebaseFirestore>()));
  gh.factory<_i14.SignInFormBloc>(
      () => _i14.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i15.TransactionActorBloc>(
      () => _i15.TransactionActorBloc(get<_i11.ITransactionRepository>()));
  gh.factory<_i16.TransactionFormBloc>(
      () => _i16.TransactionFormBloc(get<_i12.TransactionRepository>()));
  gh.factory<_i17.TransactionWatcherBloc>(
      () => _i17.TransactionWatcherBloc(get<_i11.ITransactionRepository>()));
  gh.factory<_i18.AppAuthBloc>(() => _i18.AppAuthBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i19.ExchangeRateBloc>(
      () => _i19.ExchangeRateBloc(get<_i9.ICantorRemoteDataSource>()));
  return get;
}

class _$HttpInjectableModule extends _i20.HttpInjectableModule {}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}

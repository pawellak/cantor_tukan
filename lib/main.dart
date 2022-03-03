import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/core/app_widget.dart';

const splashScreenDurationInSec = 1;

void main() async {
  FlutterNativeSplash.removeAfter(initialization);
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppWidget());
}

void initialization(BuildContext context) async {
  await Future.delayed(const Duration(seconds: splashScreenDurationInSec));
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/core/app_widget.dart';

void main() async {
  ///The WidgetFlutterBinding is used to interact with the Flutter engine.
  ///Firebase.initializeApp() needs to call native code to initialize Firebase.
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(const AppWidget());
}

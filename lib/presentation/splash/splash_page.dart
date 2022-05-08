import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/app_auth_bloc.dart';
import 'package:kantor_tukan/presentation/contact/contact_page.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'constants.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/splash';

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late AndroidNotificationChannel channel;
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    loadFCM();
    listenFCM();
    super.initState();
  }

  void loadFCM() async {
    if (!kIsWeb) {
      channel = const AndroidNotificationChannel(
          'high_importance_channel', // id
          'High Importance Notifications', // title
          importance: Importance.high,
          enableVibration: true);

      flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();


      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);

      await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
  }

  void listenFCM() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _handleNotification(message);
    });

    FirebaseMessaging.onBackgroundMessage((RemoteMessage message) async {
      _handleNotification(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleNotification(message);
    });
  }

  void _handleNotification(RemoteMessage message) {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    if (notification != null && android != null && !kIsWeb) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            icon: 'launch_background',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppAuthBloc, AppAuthState>(
      listener: _getListener,
      child: Scaffold(
        appBar: _buildAppBarLoading(),
        body: _buildLoadingWidget(context),
      ),
    );
  }

  void _getListener(BuildContext context, AppAuthState state) {
    state.map(
      initial: (_) {},
      authenticated: (_) {
        _navigateToExchangeRatePage(context);
      },
      unauthenticated: (_) {
        _navigateToExchangeRatePage(context);
      },
    );
  }

  void _navigateToExchangeRatePage(BuildContext context) {
    Navigator.of(context).pushNamed(ExchangeRatePage.routeName);
  }

  Center _buildLoadingWidget(BuildContext context) {
    _checkAuthState(context);
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  void _checkAuthState(BuildContext context) {
    context.read<AppAuthBloc>().add(const AppAuthEvent.resetState());
    context.read<AppAuthBloc>().add(const AppAuthEvent.authCheckRequested());
  }

  AppBar _buildAppBarLoading() =>
      AppBar(automaticallyImplyLeading: _isBackArrowShow(), title: _buildAppBarDescription());

  bool _isBackArrowShow() => false;

  Text _buildAppBarDescription() => const Text(SplashConstants.loading);
}

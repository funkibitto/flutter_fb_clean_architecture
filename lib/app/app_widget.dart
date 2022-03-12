import 'dart:async';

import 'package:alice/alice.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fb_clean_architecture/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ModularState<AppWidget, AppController> {
  final alice = Alice();

  late StreamSubscription<User?> _sub;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _sub = controller.getAuthStateChanged().listen((event) {
      Modular.to.pushReplacementNamed(
        event != null ? '/root/feed' : '/root/search',
      );
    });
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Modular.routerDelegate.setNavigatorKey(alice.getNavigatorKey());
    Modular.setInitialRoute(
      controller.getCurrentUser() != null ? '/root/feed' : '/root/search',
    );
    return MaterialApp.router(
      title: 'Flutter FB Clean',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}

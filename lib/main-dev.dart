import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fb_clean_architecture/app/app_module.dart';
import 'package:flutter_fb_clean_architecture/app/app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'flavors.dart';
import 'package:flutter_fb_clean_architecture/firebase/dev/firebase_options.dart';

void main() async {
  F.appFlavor = Flavor.DEV;
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

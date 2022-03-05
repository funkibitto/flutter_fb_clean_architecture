import 'package:flutter_fb_clean_architecture/app/service_locator/service_locator.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ModularServiceLocator implements IServiceLocator {
  //Create a singleton for reuse the same locator for all the app
  static ModularServiceLocator? _instance;
  static ModularServiceLocator get getInstance => _instance ??= ModularServiceLocator._();
  ModularServiceLocator._();
  factory ModularServiceLocator() => getInstance;
  //Finishing the Sigleton

  @override
  T find<T extends Object>() {
    return Modular.get();
  }
}

IServiceLocator get serviceLocator => ModularServiceLocator();

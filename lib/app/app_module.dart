import 'package:flutter_modular/flutter_modular.dart';

import 'modules/root/presentation/root_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/root', module: RootModule()),
  ];
}

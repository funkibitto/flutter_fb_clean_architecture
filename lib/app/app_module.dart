import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_fb_clean_architecture/app/app_controller.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/data/datasources/remote/auth_datasource_impl.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/data/repositories/auth_repositories_impl.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/domain/usecases/get_auth_state_changed_usecase.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/auth/data/datasources/remote/auth_datasource.dart';
import 'modules/root/presentation/root_module.dart';

class AppModule extends Module {
  //External
  // final firebaseAuth = FirebaseAuth.instance;

  @override
  final List<Bind> binds = [
    // data
    Bind.lazySingleton((i) => FirebaseAuth.instance),
    Bind.factory<AuthDatasource>((i) => AuthDatasourceImpl(firebaseAuth: i())),
    Bind.factory<AuthRepository>((i) => AuthRepositoryImpl(datasource: i())),

    // usecases
    Bind.lazySingleton((i) => GetAuthStateChangedUseCase(repository: i())),
    Bind.lazySingleton((i) => GetCurrentUserUseCase(repository: i())),

    // controller
    Bind.lazySingleton((i) => AppController(
        getAuthStateChangedUseCase: i(), getCurrentUserUseCase: i()))
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/root', module: RootModule()),
  ];
}

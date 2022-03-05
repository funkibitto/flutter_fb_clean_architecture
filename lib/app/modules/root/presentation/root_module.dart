import 'package:flutter_fb_clean_architecture/app/modules/add_post/presentation/add_post_module.dart';
import 'package:flutter_fb_clean_architecture/app/modules/favorite/presentation/favorite_module.dart';
import 'package:flutter_fb_clean_architecture/app/modules/feed/presentation/feed_module.dart';
import 'package:flutter_fb_clean_architecture/app/modules/profile/presentation/profile_module.dart';
import 'package:flutter_fb_clean_architecture/app/modules/root/presentation/controllers/root_controller.dart';
import 'package:flutter_fb_clean_architecture/app/modules/root/presentation/pages/root_page.dart';
import 'package:flutter_fb_clean_architecture/app/modules/search/presentation/search_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RootModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RootController()),
    // Bind((i) => RootController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => RootPage(), children: [
      ModuleRoute('/feed',
          module: FeedModule(), transition: TransitionType.noTransition),
      ModuleRoute('/search',
          module: SearchModule(), transition: TransitionType.noTransition),
      ModuleRoute('/addPost',
          module: AddPostModule(), transition: TransitionType.noTransition),
      ModuleRoute('/favorite',
          module: FavoriteModule(), transition: TransitionType.noTransition),
      ModuleRoute('/profile',
          module: ProfileModule(), transition: TransitionType.noTransition),
    ]),
  ];
}

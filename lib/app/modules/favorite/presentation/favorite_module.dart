import 'package:flutter_fb_clean_architecture/app/modules/favorite/presentation/pages/favorite_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoriteModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => FavoritePage()),
  ];
}

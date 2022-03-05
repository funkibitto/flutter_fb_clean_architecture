import 'package:flutter_fb_clean_architecture/app/modules/feed/presentation/pages/feed_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => FeedPage()),
  ];
}

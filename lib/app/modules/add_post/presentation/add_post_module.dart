import 'package:flutter_fb_clean_architecture/app/modules/add_post/presentation/pages/add_post_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AddPostModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AddPostPage()),
  ];
}

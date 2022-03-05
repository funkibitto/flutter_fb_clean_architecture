import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

class RootController {
  RxNotifier<int> selectedIndex = RxNotifier(0);

  void onChangePage(int index) {
    //  /root/call/    Caso o Modular.to.path Terminar com / vc tem que utilizar ../chat caso nao voce pode utilizar ./chat
    print(Modular.to.path);

    switch (index) {
      case 0:
        Modular.to.navigate('/root/feed');
        break;
      case 1:
        Modular.to.navigate('/root/search');
        break;
      case 2:
        Modular.to.navigate('/root/addPost');
        break;
      case 3:
        Modular.to.navigate('/root/favorite');
        break;
      case 4:
        Modular.to.navigate('/root/profile');
        break;
      default:
    }

    selectedIndex.value = index;
  }
}

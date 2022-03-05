import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fb_clean_architecture/app/core/theme/app_colors.dart';
import 'package:flutter_fb_clean_architecture/app/modules/root/presentation/controllers/root_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends ModularState<RootPage, RootController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: RouterOutlet(),
        bottomNavigationBar: RxBuilder(builder: (context) {
          return CupertinoTabBar(
            height: 60.0,
            backgroundColor: AppColors.mobileBackgroundColor,
            items: [
              _buildBarItem(iconData: Icons.home),
              _buildBarItem(iconData: Icons.search),
              _buildBarItem(iconData: Icons.add_circle),
              _buildBarItem(iconData: Icons.favorite),
              _buildBarItem(iconData: Icons.person),
            ],
            onTap: controller.onChangePage,
            currentIndex: controller.selectedIndex.value,
          );
        }),
      ),
    );
  }

  BottomNavigationBarItem _buildBarItem({required IconData iconData}) {
    return BottomNavigationBarItem(
      icon: Icon(
        iconData,
        color: AppColors.secondaryColor,
      ),
      label: '',
      backgroundColor: AppColors.primaryColor,
      activeIcon: Icon(iconData, color: AppColors.primaryColor),
    );
  }
}

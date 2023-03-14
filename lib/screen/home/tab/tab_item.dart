import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class TabItem {
  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;

  TabItem._(this.activeIcon, this.inActiveIcon, this.tabName);

  static final TabItem home = TabItem._(Icons.home, Icons.home_outlined, 'Home');
  static final TabItem favorite = TabItem._(Icons.star, Icons.star_border_outlined, 'Favorite');

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components.dart';
import '../constants/constants.dart';
import '../controllers/controllers.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  static List<Map<String, dynamic>> navItems = [
    {'icon': Icons.home_outlined, 'title': 'Home'},
    {'icon': Icons.dashboard_outlined, 'title': 'Category'},
    {'icon': Icons.add, 'title': ''},
    {'icon': Icons.shopping_bag_outlined, 'title': 'Orders'},
    {'icon': Icons.person_outline_rounded, 'title': 'Account'},
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = mediaSize(context);
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            width: size.width,
            // height: size.height.sevenPointFivePercent,
            height: 60,
            decoration: BoxDecoration(
              color: kDividerColor.withOpacity(0.6),
            ),
            padding: EdgeInsets.all(size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int index = 0; index < navItems.length; index++) ...[
                  _NavBarItem(
                    icon: navItems[index]['icon'],
                    title: navItems[index]['title'],
                    index: index,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.index,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final int index;

  static NavBarController navBarController = Get.find();
  // static CategoryController categoryController = Get.find();

  @override
  Widget build(BuildContext context) {
    final Size size = mediaSize(context);
    return TapHandler(
      onTap: () {
        if (index != 2) {
          if (index != 1) {
            for (int i = 0; i < 4; i++) {
              // categoryController.toggle(i, false);
            }
          }
          navBarController.selectedIndex = index;
        }
      },
      child: SizedBox(
        height: size.height * 0.08,
        width: size.width * 0.15,
        child: Obx(
          () {
            final bool isSelected = navBarController.selectedIndex == index;
            const Color selectedColor = kPrimaryColor;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                index != 2
                    ? Icon(
                        icon,
                        color: isSelected ? selectedColor : kBlackColor,
                      )
                    : SizedBox.shrink(),
                if (isSelected)
                  Center(
                    child: Text(
                      title,
                      style: Get.textTheme.subtitle2!
                          .copyWith(color: selectedColor),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

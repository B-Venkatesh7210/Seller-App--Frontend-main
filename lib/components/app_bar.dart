import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/screens.dart';

import 'components.dart';

AppBar appBar(String title) {
  return AppBar(
    centerTitle: false,
    title: Text(title),
    actions: [
      ActionButton(
        child: const Icon(Icons.call),
        onTap: () => Get.dialog(const CallSupportDialog()),
      ),
      ActionButton(
        child: const Icon(Icons.search_outlined),
        onTap: () => Get.to(() => const MainSearchBar()),
      ),
      ActionButton(
        child: const Icon(Icons.shopping_cart_outlined),
        onTap: () {},
        // onTap: () => Get.to(() => const Cart()),
      ),
    ],
  );
}

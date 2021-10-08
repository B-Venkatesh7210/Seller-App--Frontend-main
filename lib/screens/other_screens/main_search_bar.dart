import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/components.dart';
import '../../constants/constants.dart';

class MainSearchBar extends StatelessWidget {
  const MainSearchBar({Key? key}) : super(key: key);

  static TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kBlackColor),
        actionsIconTheme: const IconThemeData(color: kBlackColor),
        backgroundColor: Colors.white,
        title: Text('Search', style: Get.textTheme.headline6),
        actions: [
          ActionButton(
            onTap: () {},
            // onTap: () => Get.to(() => const Cart()),
            child: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: kTransparentColor,
              border: Border.all(color: kTextFieldColor),
              borderRadius: kMediumRadius,
            ),
            height: 48,
            width: double.infinity,
            child: TextField(
              autofocus: true,
              cursorColor: kTextFieldFocusedColor,
              decoration: const InputDecoration(
                hintText: 'Start typing.....',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: kTextFieldColor,
                ),
              ),
              controller: search,
              keyboardType: TextInputType.text,
            ),
          ),
        ),
      ),
    );
  }
}

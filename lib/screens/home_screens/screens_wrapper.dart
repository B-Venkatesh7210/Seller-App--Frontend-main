import 'package:flutter/material.dart';

class ScreensWrapper extends StatelessWidget {
  const ScreensWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: const Scaffold(),
    );
  }
}

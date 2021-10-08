import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ucliq_seller_panel/screens/login_screens/login_page.dart';
import 'constants/constants.dart';
import 'controllers/controllers.dart';


void main() {
  initializeControllers();
  runApp(const MyApp());
}

void initializeControllers() {
  Get.put(NavBarController());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UCLIQ Seller Panel',
      debugShowCheckedModeBanner: false,
      theme: kTheme,
      home: const LoginPage(),
    );
  }
}

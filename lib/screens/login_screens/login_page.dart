import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ucliq_seller_panel/components/components.dart';
import 'package:ucliq_seller_panel/constants/constants.dart';
import 'package:ucliq_seller_panel/screens/home_screens/home_screens.dart';
import 'package:ucliq_seller_panel/screens/login_screens/login_screens.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = mediaSize(context);
    TextEditingController _mobileNumber = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      kImagePath + 'login_page_img.png',
                      width: size.width / 1.5,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Grow your business faster by selling at 0% commission',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 20),
                    Text(
                        'Sell your products to crores of customers on ucliq at 0% commission',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.grey[700])),
                    SizedBox(height: 40),
                    DefaultTextField(
                        labelText: 'Mobile Number',
                        hintText: 'Enter your Mobile Number',
                        yourname: _mobileNumber),
                  ],
                ),
              ),
              SizedBox(height: size.height / 6.5),
              RedButtonNavigator(
                textName: 'Start Selling',
                navigate: Otp(),
                height: size.height / 12,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

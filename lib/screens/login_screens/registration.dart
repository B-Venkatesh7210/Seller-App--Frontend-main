import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ucliq_seller_panel/components/components.dart';
import 'package:ucliq_seller_panel/constants/constants.dart';
import 'package:ucliq_seller_panel/screens/home_screens/home_screens.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _yourname = TextEditingController();
    TextEditingController _pinCode = TextEditingController();
    TextEditingController _businessShop = TextEditingController();
    final Size size = mediaSize(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(kImagePath + 'registration_img.png',
                      width: size.width / 1.6),
                  SizedBox(height: 15),
                  Text('Enter Account Information',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: kPrimaryColor)),
                  SizedBox(height: 10),
                  Text('Register your Business on Ucliq',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.grey[700])),
                  SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        DefaultTextField(
                          yourname: _yourname,
                          hintText: 'Enter your first name',
                          labelText: 'Your Name',
                        ),
                        SizedBox(height: 15),
                        DefaultTextField(
                          yourname: _businessShop,
                          hintText: 'Enter the name of your business',
                          labelText: 'Business or Shop Name',
                        ),
                        SizedBox(height: 15),
                        DefaultTextField(
                          yourname: _pinCode,
                          hintText: 'Area Pincode eg.110095',
                          labelText: 'PinCode',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            RedButtonNavigator(
              textName: 'Submit',
              navigate: HomeParent(),
              height: size.height / 12,
            )
          ]),
        ),
      ),
    );
  }
}

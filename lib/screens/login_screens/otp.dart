import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ucliq_seller_panel/components/components.dart';
import 'package:ucliq_seller_panel/constants/constants.dart';
import 'package:ucliq_seller_panel/screens/login_screens/login_screens.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = mediaSize(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'OTP Verification',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  kImagePath + 'otp_image.png',
                  width: size.width / 3,
                ),
                SizedBox(height: 20),
                Text(
                  'Enter the verification code sent to +91 9876543210',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.grey[700]),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: PinCodeTextField(
                    keyboardType: TextInputType.number,
                    appContext: context,
                    length: 6,
                    obscureText: false,
                    pinTheme: PinTheme(
                      inactiveColor: Colors.grey,
                      shape: PinCodeFieldShape.underline,
                      activeFillColor: Colors.white,
                    ),
                    controller: otp,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");

                      return true;
                    },
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Didn’t receive OTP? ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.grey[700]),
                  ),
                  TextSpan(
                      text: 'Resend Now',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(decoration: TextDecoration.underline))
                ])),
              ],
            ),
          ),
          SizedBox(height: size.height / 9.2),
          RedButtonNavigator(
            textName: 'Verify',
            navigate: Registration(),
            height: size.height / 12,
          ),
        ]),
      )),
    );
  }
}

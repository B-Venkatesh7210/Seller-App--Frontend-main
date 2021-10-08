import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq_seller_panel/constants/constants.dart';

class RedButtonNavigator extends StatelessWidget {
  final String textName;
  final double? width;

  final double? height;
  final Widget navigate;
  RedButtonNavigator({
    this.width,
    this.height,
    required this.textName,
    required this.navigate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor[500])),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => navigate));
          },
          child: Container(
              width: width,
              height: height,
              child: Center(
                child: Text(textName, style: GoogleFonts.roboto()),
              ))),
    );
  }
}

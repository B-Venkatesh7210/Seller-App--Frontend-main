import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ucliq_seller_panel/constants/constants.dart';

class DefaultTextField extends StatelessWidget {
  final String labelText;

  final String hintText;
  DefaultTextField({
    required this.labelText,
    required this.hintText,
    Key? key,
    required TextEditingController yourname,
  })  : _yourname = yourname,
        super(key: key);

  final TextEditingController _yourname;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: 10),
        TextField(
          style: TextStyle(
              color: Colors.grey[900], fontSize: 14, letterSpacing: 1),
          controller: _yourname,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: kTextFieldFocusedColor),
                  borderRadius: BorderRadius.circular(4)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: kTextFieldFocusedColor),
                  borderRadius: BorderRadius.circular(8)),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              hintText: hintText,
              hintStyle: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.grey[500])),
        )
      ],
    );
  }
}

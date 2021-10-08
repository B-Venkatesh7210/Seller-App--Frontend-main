import 'package:flutter/material.dart';
import '../constants/constants.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.trailingButton = true,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onTap;
  final bool trailingButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          right: trailingButton ? kIconsPadding : 0,
          left: trailingButton ? 0 : kIconsPadding / 2,
        ),
        child: child,
      ),
    );
  }
}

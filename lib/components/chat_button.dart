import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      // onPressed: () => Get.to(() => const ChatScreen()),
      backgroundColor: kPrimaryColor,
      child: const Icon(Icons.messenger_outline_rounded),
      tooltip: 'Chat',
    );
  }
}

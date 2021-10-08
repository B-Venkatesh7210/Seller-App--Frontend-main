import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/components.dart';
import '../constants/constants.dart';
import '../services/services.dart';

class CallSupportDialog extends StatelessWidget {
  const CallSupportDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = mediaSize(context);
    return Dialog(
      shape: kMediumButtonShape,
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: SizedBox(
          height: size.height * 0.2,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  const Text('Talk to Customer Care'),
                  ActionButton(
                    child: const Icon(Icons.close_rounded),
                    onTap: () => Get.back(),
                  ),
                ],
              ),
              const Divider(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TapHandler(
                    onTap: () => UrlLauncher.openWhatsapp(),
                    child: Image.asset(
                      kIllustrationPath + 'whatsapp.png',
                      scale: 1.2,
                    ),
                  ),
                  SizedBox(width: size.width * 0.05),
                  TapHandler(
                    onTap: () => UrlLauncher.openCall(),
                    child: Image.asset(
                      kIllustrationPath + 'phone-call.png',
                      scale: 1.2,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

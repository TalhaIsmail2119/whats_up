import 'package:flutter/material.dart';
import 'package:whats_up/common/widgets/custom_button_widgets.dart';
import 'package:gap/gap.dart';

import '../../../common/utils/colors.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(50),
            const Text(
              'Welcome to WhatsUp',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(size.height / 9),
            Image.asset(
              'assets/bg.png',
              height: 340,
              width: 340,
              color: tabColor,
            ),
            Gap(size.height / 9),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                style: TextStyle(color: greyColor),
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(10),
            SizedBox(
              width: size.width * 0.75,
              child: CustomButtonWidget(
                text: 'AGREE AND CONTINUE',
                onPressed: (){}
              ),
            ),
          ],
        ),
      ),
    );
  }
}
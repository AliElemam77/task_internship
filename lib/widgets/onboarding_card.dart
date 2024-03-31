import 'package:flutter/material.dart';

import 'package:task/common/app_style.dart';
import 'package:task/common/custom_buttom.dart';
import 'package:task/common/reusable_text.dart';

class OnBoardingCard extends StatelessWidget {
  OnBoardingCard({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    required this.onTap,
  });
  String image, title, subTitle, buttonText;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Image.asset(image),
          ),
          Positioned(
              left: 120,
              top: 60,
              child: Row(
                children: [
                  Image.asset('assets/images/ayada.png'),
                  Image.asset('assets/images/icon.png'),
                ],
              )),
          Positioned(
            bottom: 137,
            right: 22,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                ReusableText(
                  text: title,
                  style: appStyle(22, Colors.black, FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                ReusableText(
                  text: subTitle,
                  style: appStyle(20, Colors.black, FontWeight.w600),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 19,
            left: 20,
            child: CustomButtom(
              onTap: onTap,
              width: 350,
              color: Colors.white,
              borderColor: const Color.fromARGB(255, 0, 113, 205),
              height: 72,
              child: ReusableText(
                text: buttonText,
                style: appStyle(22, Colors.red, FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 20,
            child: TextButton(
              onPressed: () {
                // go to AFTER next ONBOARDING page
              },
              child: ReusableText(
                text: 'تخطي',
                style: appStyle(16, Colors.black, FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

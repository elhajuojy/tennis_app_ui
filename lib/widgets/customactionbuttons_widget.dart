import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../core/color.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        print("go back");
      }),
      child: Container(
        width: Get.width * 0.13,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 240, 237, 237),
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            FontAwesomeIcons.chevronLeft,
            color: AppColor.SecondDarkColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBoxInformation extends StatelessWidget {
  const CustomBoxInformation({
    Key? key,
    required this.boxIcon,
    required this.label,
  }) : super(key: key);
  final IconData boxIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.25,
      height: Get.height * 0.1,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1.6,
            color: const Color.fromARGB(123, 255, 249, 249),
          ),
          borderRadius: BorderRadius.circular(11)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              boxIcon,
              color: const Color.fromARGB(255, 193, 189, 189),
            ),
            const SizedBox(height: 15),
            Text(
              label,
              style: const TextStyle(color: Color.fromARGB(255, 193, 189, 189)),
            )
          ],
        ),
      ),
    );
  }
}

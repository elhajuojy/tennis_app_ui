import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tennis_app2/core/color.dart';
import '../widgets/customactionbuttons_widget.dart';
import '../widgets/customboxinformation_widget.dart';

class TrainScreen extends StatelessWidget {
  const TrainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/one.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.04),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: CustomActionButton(),
            ),
            SizedBox(height: Get.height * 0.42),
            Container(
              height: Get.height * 0.421,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: AppColor.primaryDarkColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Women's league",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Take part in a 2-hour session where you can expect plenty of rallying followed by competitive point play team singles style .",
                      style: TextStyle(
                        color: Color.fromARGB(141, 255, 255, 255),
                        height: 1.4,
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CustomBoxInformation(
                            boxIcon: FontAwesomeIcons.calendarCheck,
                            label: "24 February"),
                        CustomBoxInformation(
                            boxIcon: FontAwesomeIcons.clock,
                            label: "18:00-20:00"),
                        CustomBoxInformation(
                            boxIcon: FontAwesomeIcons.star,
                            label: "All Levels"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: (() {
                        print("buy this train");
                      }),
                      child: Container(
                        alignment: Alignment.center,
                        width: Get.width,
                        height: 50,
                        decoration: BoxDecoration(
                            color: AppColor.primaryGreenColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          r"Participate  $30",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

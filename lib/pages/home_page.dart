import 'package:fire_watch_effect/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/parallax_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double rateZero = 0.0;
  double rateOne = 0.0;
  double rateTwo = 0.0;
  double rateThree = 0.0;
  double rateFour = 0.0;
  double rateFive = 0.0;
  double rateSix = 0.0;
  double rateSeven = 0.0;
  double rateEight = 50.0;

  String? asset;
  double top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
          onNotification: (v) {
            if (v is ScrollUpdateNotification) {
              setState(() {
                rateEight -= (v.scrollDelta! / 1);
                rateSeven -= v.scrollDelta! / 1.5;
                rateSix -= v.scrollDelta! / 2;
                rateFive -= v.scrollDelta! / 2.5;
                rateFour -= v.scrollDelta! / 3;
                rateThree -= v.scrollDelta! / 3.5;
                rateTwo -= v.scrollDelta! / 4;
                rateOne -= v.scrollDelta! / 4.5;
                rateZero -= v.scrollDelta! / 5;
              });
            }
            return true;
          },
          child: Stack(children: [
            ParallaxWidget(top: rateZero, asset: "i-0"),
            ParallaxWidget(top: rateOne, asset: "i-1"),
            ParallaxWidget(top: rateTwo, asset: "i-2"),
            ParallaxWidget(top: rateThree, asset: "i-3"),
            ParallaxWidget(top: rateFour, asset: "i-4"),
            ParallaxWidget(top: rateFive, asset: "i-5"),
            ParallaxWidget(top: rateSix, asset: "i-6"),
            ParallaxWidget(top: rateSeven, asset: "i-7"),
            ParallaxWidget(top: rateEight, asset: "i-8"),
            ListView(
              children: [
                Container(
                  height: 550,
                  color: Colors.transparent,
                ),
                Container(
                  color: AppColors.kSecondayColor,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Parallax In",
                        style: TextStyle(
                            fontSize: 24,
                            letterSpacing: 1.8,
                            color: AppColors.kPrimaryColor),
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(
                            fontSize: 51,
                            letterSpacing: 1.8,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kPrimaryColor),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 190,
                        child: Divider(
                          height: 1,
                          color: AppColors.kPrimaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Obaid Ullah (flutter_boy_017)",
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1.8,
                            color: AppColors.kPrimaryColor),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            )
          ])),
    );
  }
}

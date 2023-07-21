import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get.dart';
import 'package:languagelearningappversion2/screens/home_page.dart';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: AnimatedSplashScreen(
          splashIconSize: height,
          splash: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/images/photos/background_Splash.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Image.asset(
                        "assets/images/photos/japan.png",
                        color: Colors.white,
                        width: width * 0.5,
                      ),
                      const Text(
                        "Toku App",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Pacifico"),
                      ),
                      const Text(
                        "Application for learning japanese",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Pacifico"),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.4,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(
                          "assets/images/animations/130710-cara-waiting-3.json",
                          width: width * 0.5,
                        )
                      ]),
                )
              ],
            ),
          ),
          nextScreen: HomePage(),
        ),
      ),
    );
  }
}

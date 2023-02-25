import 'package:flutter/material.dart';
import 'package:languagelearningappversion2/components/category_item.dart';
import 'package:languagelearningappversion2/screens/numberspage.dart';

class HomePage extends StatelessWidget {
  static late double width;
  static late double height;
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/photos/pagebg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Container(
            width: width,
            height: height * 0.43,
            child: Image.asset(
              "assets/images/photos/jpn_bg.png",
              width: width * 0.5,
            ),
          ),
          Container(
            width: width,
            height: height * 0.57,
            child: Column(
              children: [
                Category(
                    background: "numbers_category",
                    text: "numbers",
                    icon: "numbers",
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return NumbersPage();
                        },
                      ));
                    })
              ],
            ),
          )
        ]),
      ),
    );
  }
}

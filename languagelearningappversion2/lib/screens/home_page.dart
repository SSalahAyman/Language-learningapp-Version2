import 'package:flutter/material.dart';
import 'package:languagelearningappversion2/components/category_item.dart';
import 'package:languagelearningappversion2/screens/Numbers_page.dart';
import 'package:languagelearningappversion2/screens/colors_page.dart';
import 'package:languagelearningappversion2/screens/family_members_page.dart';
import 'package:languagelearningappversion2/screens/phrases_page.dart';

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
            height: height * 0.38,
            child: Image.asset(
              "assets/images/photos/jpn_bg.png",
              width: width * 0.5,
            ),
          ),
          Container(
            width: width,
            height: height * 0.62,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /*
              First category (numbers)
              */
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
                    }),
                /*
              Second category (numbers)
              */
                Category(
                    background: "family_members_category",
                    text: "Family members",
                    icon: "family_members",
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return FamilyMemebersPage();
                        },
                      ));
                    }),
                /*
              third category (numbers)
              */
                Category(
                    background: "colors_category",
                    text: "Colors",
                    icon: "colors",
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return ColorsPage();
                        },
                      ));
                    }),
                /*
              fourth category (numbers)
              */
                Category(
                    background: "phrases_category",
                    text: "Phrases",
                    icon: "phrases",
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return PhrasesPage();
                        },
                      ));
                    }),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

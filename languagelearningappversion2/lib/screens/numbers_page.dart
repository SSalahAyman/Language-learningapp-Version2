import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:languagelearningappversion2/components/list_item.dart';
import 'package:languagelearningappversion2/models/item.dart';

class NumbersPage extends StatelessWidget {
  static late double width;
  static late double height;
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
        enName: "one",
        jpName: "ichi",
        imageItem: "number_one",
        sound: "sounds/numbers/number_one_sound.mp3"),
    Item(
        enName: "two",
        jpName: "Ni",
        imageItem: "number_two",
        sound: "sounds/numbers/number_two_sound.mp3"),
    Item(
        enName: "three",
        jpName: "San",
        imageItem: "number_three",
        sound: "sounds/numbers/number_three_sound.mp3"),
    Item(
        enName: "four",
        jpName: "Shi",
        imageItem: "number_four",
        sound: "sounds/numbers/number_four_sound.mp3"),
    Item(
        enName: "five",
        jpName: "Go",
        imageItem: "number_five",
        sound: "sounds/numbers/number_five_sound.mp3"),
    Item(
        enName: "six",
        jpName: "Roku",
        imageItem: "number_six",
        sound: "sounds/numbers/number_six_sound.mp3"),
    Item(
        enName: "seven",
        jpName: "Sebun",
        imageItem: "number_seven",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    Item(
        enName: "eight",
        jpName: "Hachi",
        imageItem: "number_eight",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    Item(
        enName: "nine",
        jpName: "Kyū",
        imageItem: "number_nine",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    Item(
        enName: "ten",
        jpName: "Jū",
        imageItem: "number_ten",
        sound: "sounds/numbers/number_ten_sound.mp3")
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            SizedBox(
              width: width * 0.14,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.02),
              child: const Text(
                "Numbers",
                style: TextStyle(fontSize: 25, fontFamily: 'pacifico'),
              ),
            ),
            Hero(
              tag: "numbers",
              child: Image.asset(
                "assets/icons/numbers.png",
                width: width * 0.1,
              ),
            )
          ],
        ),
      ),
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/photos/pagebg.png"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, Index) {
            return ListItem(
              itemtype: "numbers",
              bgImage: "numbers_category",
              item: numbers[Index],
            );
          },
          // separatorBuilder: (context, index) {
          //   return Divider(
          //     color: Colors.grey,
          //     thickness: 3,
          //   );
          // },
        ),
      ),
    );
  }
}

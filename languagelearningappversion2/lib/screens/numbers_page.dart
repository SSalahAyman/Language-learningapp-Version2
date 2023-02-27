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
    ),
    Item(
      enName: "two",
      jpName: "ichi",
      imageItem: "number_two",
    ),
    Item(
      enName: "three",
      jpName: "ichi",
      imageItem: "number_three",
    ),
    Item(
      enName: "four",
      jpName: "ichi",
      imageItem: "number_four",
    ),
    Item(
      enName: "five",
      jpName: "ichi",
      imageItem: "number_five",
    ),
    Item(
      enName: "six",
      jpName: "ichi",
      imageItem: "number_six",
    ),
    Item(
      enName: "seven",
      jpName: "ichi",
      imageItem: "number_seven",
    ),
    Item(
      enName: "eight",
      jpName: "ichi",
      imageItem: "number_eight",
    ),
    Item(
      enName: "nine",
      jpName: "ichi",
      imageItem: "number_nine",
    ),
    Item(
      enName: "ten",
      jpName: "ichi",
      imageItem: "number_ten",
    )
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
            Image.asset(
              "assets/icons/numbers.png",
              width: width * 0.1,
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
              bgImage: "numbers_category",
              item: numbers[Index],
            );
          },
        ),
      ),
    );
  }
}

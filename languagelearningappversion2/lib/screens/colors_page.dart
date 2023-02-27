import 'package:flutter/material.dart';
import 'package:languagelearningappversion2/components/list_item.dart';
import 'package:languagelearningappversion2/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  static late double width;
  static late double height;
  final List<Item> colors = const [
    Item(
      imageItem: "color_black",
      jpName: 'Kuro',
      enName: 'black',
    ),
    Item(
      imageItem: "color_brown",
      jpName: 'Chairo',
      enName: 'brown',
    ),
    Item(
      imageItem: "color_dusty_yellow",
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
    ),
    Item(
      imageItem: "color_gray",
      jpName: 'Gurē',
      enName: 'gray',
    ),
    Item(
      imageItem: "color_green",
      jpName: 'Midori',
      enName: 'green',
    ),
    Item(
      imageItem: "color_red",
      jpName: 'Aka',
      enName: 'red',
    ),
    Item(
      imageItem: "color_white",
      jpName: 'Shiroi',
      enName: 'white',
    ),
    Item(
      imageItem: "yellow",
      jpName: 'Kiiro',
      enName: 'yellow',
    ),
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
              width: width * 0.18,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.02),
              child: const Text(
                "Colors",
                style: TextStyle(fontSize: 25, fontFamily: 'pacifico'),
              ),
            ),
            Image.asset(
              "assets/icons/colors.png",
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
          itemCount: colors.length,
          itemBuilder: (BuildContext context, Index) {
            return ListItem(
              itemtype: "colors",
              bgImage: "colors_category",
              item: colors[Index],
            );
          },
        ),
      ),
    );
  }
}

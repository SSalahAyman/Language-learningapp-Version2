import 'package:flutter/material.dart';
import 'package:languagelearningappversion2/components/list_item.dart';
import 'package:languagelearningappversion2/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  static late double width;
  static late double height;

  final List<Item> Phrases = const [
    Item(
        enName: 'dont forget to subscribe',
        jpName: 'Kōdoku suru koto o ',
        sound: ""),
    Item(
        enName: 'i love  programming',
        jpName: 'Puroguramingu wa kantandesu ',
        sound: ""),
    Item(
        enName: 'where are you going',
        jpName: 'Kōdoku suru koto o ',
        sound: ""),
    Item(
        enName: 'dont forget to subscribe',
        jpName: 'Doko ni iku no ',
        sound: ""),
    Item(
        enName: 'what is your name ?',
        jpName: 'Namae wa nandesu ka ',
        sound: ""),
    Item(
        enName: 'i love anime',
        jpName: 'Watashi wa anime ga daisukidesu ',
        sound: ""),
    Item(
        enName: 'how are you feeling?',
        jpName: 'Go kibun wa ikagadesu ka ',
        sound: ""),
    Item(enName: 'are you coming?', jpName: 'Kimasu ka ', sound: ""),
    Item(
        enName: 'yes i am coming',
        jpName: 'Hai watashi wa kite imasu',
        sound: ""),
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: width * 0.18,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.02),
              child: const Text(
                "Phrases",
                style: TextStyle(fontSize: 25, fontFamily: 'pacifico'),
              ),
            ),
            Hero(
              tag: "phrases",
              child: Image.asset(
                "assets/icons/phrases.png",
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
            fit: BoxFit.cover,
            image: AssetImage("assets/images/photos/pagebg.png"),
          ),
        ),
        child: ListView.builder(
          itemCount: Phrases.length,
          itemBuilder: (BuildContext context, index) {
            return ListItem(
                bgImage: "phrases_category",
                item: Phrases[index],
                itemtype: "phrases");
          },
        ),
      ),
    );
  }
}

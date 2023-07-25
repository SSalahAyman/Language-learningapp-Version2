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
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Item(
        enName: 'i love  programming',
        jpName: 'Puroguramingu wa kantandesu ',
        sound: "sounds/phrases/i_love_programming.wav"),
    Item(
        enName: 'where are you going',
        jpName: 'Kōdoku suru koto o ',
        sound: "sounds/phrases/where_are_you_going.wav"),
    Item(
        enName: 'dont forget to subscribe',
        jpName: 'Doko ni iku no ',
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Item(
        enName: 'what is your name ?',
        jpName: 'Namae wa nandesu ka ',
        sound: "sounds/phrases/what_is_your_name.wav"),
    Item(
        enName: 'i love anime',
        jpName: 'Watashi wa anime ga daisukidesu ',
        sound: "sounds/phrases/i_love_anime.wav"),
    Item(
        enName: 'how are you feeling?',
        jpName: 'Go kibun wa ikagadesu ka ',
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    Item(
      enName: 'are you coming?',
      jpName: 'Kimasu ka ',
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    Item(
        enName: 'yes i am coming',
        jpName: 'Hai watashi wa kite imasu',
        sound: "sounds/phrases/yes_im_coming.wav"),
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

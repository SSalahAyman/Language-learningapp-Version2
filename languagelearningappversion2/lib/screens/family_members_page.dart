import 'package:flutter/material.dart';
import 'package:languagelearningappversion2/components/list_item.dart';
import 'package:languagelearningappversion2/models/item.dart';

class FamilyMemebersPage extends StatelessWidget {
  static late double width;
  static late double height;
  const FamilyMemebersPage({super.key});
  final List<Item> familymembers = const [
    Item(
        imageItem: "family_father",
        jpName: 'Otōsan',
        enName: 'father',
        sound: "sounds/family_members/father.wav"),
    Item(
        imageItem: "family_mother",
        jpName: 'Hahaoya',
        enName: 'mother',
        sound: "sounds/family_members/mother.wav"),
    Item(
        imageItem: "family_son",
        jpName: 'Musuko',
        enName: 'son',
        sound: "sounds/family_members/son.wav"),
    Item(
        imageItem: "family_daughter",
        jpName: 'Musume',
        enName: 'daughter',
        sound: "sounds/family_members/daughter.wav"),
    Item(
        imageItem: "family_grandfather",
        jpName: 'Ojīsan',
        enName: 'grand father',
        sound: "sounds/family_members/grand_father.wav"),
    Item(
        imageItem: "family_grandmother",
        jpName: 'Sobo',
        enName: 'grand mother',
        sound: "sounds/family_members/grand_mother.wav"),
    Item(
        imageItem: "family_older_brother",
        jpName: 'Nīsan',
        enName: 'older brother',
        sound: "sounds/family_members/older_brother.wav"),
    Item(
        imageItem: "family_older_sister",
        jpName: 'Onēsan',
        enName: 'older sister',
        sound: "sounds/family_members/older_sister.wav"),
    Item(
        imageItem: "family_younger_brother",
        jpName: 'Otōto',
        enName: 'younger brother',
        sound: "sounds/family_members/younger_brother.wav"),
    Item(
        imageItem: "family_younger_sister",
        jpName: 'Imōto',
        enName: 'younger sister',
        sound: "sounds/family_members/younger_sister.wav"),
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
              width: width * 0.1,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.02),
              child: const Text(
                "Family members",
                style: TextStyle(fontSize: 25, fontFamily: 'pacifico'),
              ),
            ),
            Hero(
              tag: "family members",
              child: Image.asset(
                "assets/icons/family_members.png",
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
          itemCount: familymembers.length,
          itemBuilder: (BuildContext context, Index) {
            return ListItem(
              itemtype: "family_members",
              bgImage: "family_members_category",
              item: familymembers[Index],
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  static late double width;
  static late double height;
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
    );
  }
}

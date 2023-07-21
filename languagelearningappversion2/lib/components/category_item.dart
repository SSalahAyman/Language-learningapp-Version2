import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  static late double width;
  static late double height;
  String background;
  String text;
  String icon;
  String tag;
  VoidCallback ontap;

  Category(
      {super.key,
      required this.background,
      required this.text,
      required this.icon,
      required this.ontap,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width * 0.8,
        height: height * 0.09,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/photos/$background.png"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white, fontSize: 30, fontFamily: 'pacifico'),
            ),
            SizedBox(
              width: width * 0.04,
            ),
            Hero(
              tag: tag,
              child: Image.asset(
                "assets/icons/$icon.png",
                width: width * 0.12,
                height: height * 0.12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

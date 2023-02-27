import 'package:flutter/material.dart';
import 'package:languagelearningappversion2/models/item.dart';

class ListItem extends StatelessWidget {
  static late double width;
  static late double height;
  String bgImage;
  String itemtype;
  Item item;
  ListItem(
      {super.key,
      required this.bgImage,
      required this.item,
      required this.itemtype});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: width * 0.01, vertical: height * 0.012),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
            image: AssetImage(
              "assets/images/photos/$bgImage.png",
            ),
            fit: BoxFit.cover),
      ),
      width: width,
      height: height * 0.11,
      child: Row(
        children: [
          SizedBox(
            width: width * 0.03,
          ),
          CircleAvatar(
            radius: width * 0.1,
            backgroundColor: Colors.blueAccent.withOpacity(0.2),
            child: Container(
              width: width * 0.25,
              height: height * 0.111,
              child:
                  Image.asset("assets/images/$itemtype/${item.imageItem}.png"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Text(
                  item.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Text(
                  item.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.01),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_filled_outlined,
                color: Colors.grey.withOpacity(0.6),
              ),
            ),
          )
        ],
      ),
    );
  }
}

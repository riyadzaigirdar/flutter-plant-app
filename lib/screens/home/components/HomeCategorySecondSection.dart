import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class HomeCategorySecondSection extends StatelessWidget {
  void press(path) {
    print(path);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: <Widget>[
          HomeCategorySecondSectionItem(
              "assets/images/bottom_img_1.png", press),
          HomeCategorySecondSectionItem("assets/images/bottom_img_2.png", press)
        ]));
  }
}

class HomeCategorySecondSectionItem extends StatelessWidget {
  HomeCategorySecondSectionItem(this.imagePath, this.press);

  final String imagePath;
  final press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            )),
      ),
      onTap: () => press(imagePath),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/detail/detail_screen.dart';

class HomeCategoryItemSection extends StatelessWidget {
  const HomeCategoryItemSection({
    Key key,
  }) : super(key: key);

  void press(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendedPlantCard(
              "assets/images/image_1.png", "samantha", "400", "russia", press),
          RecommendedPlantCard(
              "assets/images/image_2.png", "samantha", "400", "russia", press),
          RecommendedPlantCard(
              "assets/images/image_3.png", "samantha", "400", "russia", press),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  RecommendedPlantCard(
      this.imagePath, this.name, this.price, this.location, this.press);

  final String imagePath;
  final String name;
  final String price;
  final String location;
  final press;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding / 2,
          right: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(
            imagePath,
          ),
          GestureDetector(
            onTap: () => press(context),
            child: Container(
              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(7.0),
                      bottomRight: Radius.circular(7.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "$name\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: location.toUpperCase(),
                        style:
                            TextStyle(color: kPrimaryColor.withOpacity(0.70)))
                  ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.green),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

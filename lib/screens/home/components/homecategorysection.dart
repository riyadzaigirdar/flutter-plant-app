import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class HomeCategorySection extends StatelessWidget {
  HomeCategorySection(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          TextWithCustomUnderline(title),
          Spacer(),
          TitleWithMoreButton()
        ],
      ),
    );
  }
}

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () {},
      child: Text(
        "More",
        style: TextStyle(color: Colors.white),
      ),
      color: kPrimaryColor,
    );
  }
}

class TextWithCustomUnderline extends StatelessWidget {
  TextWithCustomUnderline(this.title);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      // color: Colors.red,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              height: 3,
              color: kPrimaryColor.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}

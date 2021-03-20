import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class BuyNowButtonSection extends StatelessWidget {
  const BuyNowButtonSection({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              "Buy Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            color: kBackgroundColor,
            onPressed: () {},
            child: Text(
              "Description",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.50),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

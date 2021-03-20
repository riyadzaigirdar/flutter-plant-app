import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class TitilePriceSection extends StatelessWidget {
  const TitilePriceSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Angelica\n",
                style: Theme.of(context).textTheme.headline4.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            TextSpan(
                text: "\$440",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold))
          ])),
          Spacer(),
          Text(
            "Dhaka",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

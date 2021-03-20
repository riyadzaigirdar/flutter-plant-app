import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class RightImageContainer extends StatelessWidget {
  const RightImageContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(-10, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.3))
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              topLeft: Radius.circular(50.0)),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("assets/images/img.png"))),
    );
  }
}

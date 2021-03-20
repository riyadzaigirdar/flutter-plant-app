import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/constants.dart';

class LeftIconContainer extends StatelessWidget {
  const LeftIconContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
            child: IconButton(
                padding: const EdgeInsets.all(30.0),
                icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          LeftContainerIcon("assets/icons/sun.svg"),
          LeftContainerIcon("assets/icons/icon_2.svg"),
          LeftContainerIcon("assets/icons/icon_3.svg"),
          LeftContainerIcon("assets/icons/icon_4.svg")
        ]));
  }
}

class LeftContainerIcon extends StatelessWidget {
  LeftContainerIcon(this.iconImagePath);
  final String iconImagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63,
      height: 63,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(10, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.23)),
            BoxShadow(
                offset: Offset(-15, 15), blurRadius: 50, color: Colors.white)
          ]),
      child: IconButton(
        icon: SvgPicture.asset(iconImagePath),
        onPressed: () {},
      ),
    );
  }
}

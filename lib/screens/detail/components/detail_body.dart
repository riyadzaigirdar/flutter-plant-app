import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/detail/components/BuyNowButtonSection.dart';
import 'package:plant/screens/detail/components/ImageIconTopCard.dart';
import 'package:plant/screens/detail/components/TitlePriceSection.dart';

class Detailbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        ImageIconTopCard(size: size),
        TitilePriceSection(),
        BuyNowButtonSection(size: size)
      ]),
    );
  }
}

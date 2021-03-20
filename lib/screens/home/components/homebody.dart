import 'package:flutter/material.dart';
import 'package:plant/screens/home/components/HomeCategoryItemSection.dart';
import 'package:plant/screens/home/components/HomeCategorySecondSection.dart';
import 'package:plant/screens/home/components/HomeHeaderSearch.dart';
import 'package:plant/screens/home/components/homecategorysection.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HomeHeaderSearch(size: size),
          HomeCategorySection("Recommended"),
          HomeCategoryItemSection(),
          HomeCategorySection("Featured Plants"),
          HomeCategorySecondSection(),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

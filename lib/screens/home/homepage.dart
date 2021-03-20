import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/screens/home/components/homebody.dart';
import '../components/BottomNavigationBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Image.asset("assets/images/logo.png"),
        onPressed: () {},
      ),
      title: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "Plant App",
          )),
      actions: <IconButton>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {})
      ],
      toolbarHeight: 60.0,
    );
  }
}

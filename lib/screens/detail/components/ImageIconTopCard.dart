import 'package:flutter/material.dart';
import 'package:plant/screens/detail/components/LeftIconContainer.dart';
import 'package:plant/screens/detail/components/RightImageContainer.dart';

class ImageIconTopCard extends StatelessWidget {
  const ImageIconTopCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            LeftIconContainer(),
            RightImageContainer(size: size)
          ],
        ),
      ),
    );
  }
}

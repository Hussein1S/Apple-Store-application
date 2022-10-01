import 'package:flutter/material.dart';

import '../../constants.dart';



class ColorDot extends StatelessWidget {
  ColorDot({
    Key? key,
    required this.size, required this.fillColor,  this.isSelected = false,
  }) : super(key: key);

  Size size;
  Color fillColor;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        padding: EdgeInsets.all(2.0),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all( color : isSelected ? kTextLightColor : Colors.transparent,
          ),
        ),
        child: Container(
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: fillColor,
            ))
    );
  }
}

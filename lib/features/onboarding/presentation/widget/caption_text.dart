import 'package:flutter/material.dart';
import 'package:travel_app/core/constans/sizeboxs.dart';
import 'package:travel_app/core/constans/styles.dart';

class CaptionText extends StatelessWidget {
  const CaptionText({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          textAlign: TextAlign.center,
          style: textStyle24Black600,
        ),
        ySize(20),
        Text(
          text2,
          textAlign: TextAlign.center,
          style: textStyle12Grey400,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/constans/colors.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key? key, required this.lenght, required this.currentIndex})
      : super(key: key);
  final int lenght, currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(lenght, ((index) {
          if (index == currentIndex) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundColor: primary,
                radius: 5.r,
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: grey,
              radius: 5.r,
            ),
          );
        })));
  }
}

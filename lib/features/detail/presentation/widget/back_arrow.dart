import 'package:flutter/material.dart';
import 'package:travel_app/core/constans/colors.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: CircleAvatar(
          backgroundColor: secondaryColor,
          child: Icon(
            Icons.arrow_back,
            color: black,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app/core/constans/colors.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
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
        child: Icon(Icons.more_horiz, color: black),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/styles.dart';

class OptionTextWidget extends StatelessWidget {
  const OptionTextWidget({
    Key? key,
    required this.optionTitle,
    required this.actionText,
    required this.onTap,
  }) : super(key: key);
  final String optionTitle;
  final String actionText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          optionTitle,
          style: textStyle20Black600,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            actionText,
            style: textStyle12Grey400,
          ),
        ),
      ],
    );
  }
}

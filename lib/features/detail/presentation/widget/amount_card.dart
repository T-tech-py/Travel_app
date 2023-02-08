import 'package:flutter/material.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/styles.dart';
import 'package:travel_app/core/util/radius.dart';

class AmountCard extends StatelessWidget {
  const AmountCard({
    Key? key,
    required this.amount,
  }) : super(key: key);
  final int amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 4.7,
          color: black.withOpacity(0.1),
          offset: const Offset(0, 4.5),
        )
      ], borderRadius: customRadius(6), color: secondaryColor),
      child: Center(
        child: Text(
          "\$amount",
          style: textStyle14White600.copyWith(color: primary),
        ),
      ),
    );
  }
}

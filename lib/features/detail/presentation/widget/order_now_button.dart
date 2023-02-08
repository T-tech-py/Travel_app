import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/styles.dart';
import 'package:travel_app/core/util/radius.dart';

class OrderNowButton extends StatelessWidget {
  const OrderNowButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.h,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 4.7,
            color: black.withOpacity(0.1),
            offset: const Offset(0, 4.5),
          )
        ], borderRadius: customRadius(12), color: primary),
        child: Center(
          child: Text(
            "Order Now",
            style: textStyle14White600,
          ),
        ),
      ),
    );
  }
}

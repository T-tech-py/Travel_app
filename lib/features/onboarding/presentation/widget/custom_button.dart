import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/styles.dart';
import 'package:travel_app/core/util/radius.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56.h,
        decoration:
            BoxDecoration(color: primary, borderRadius: customRadius(30)),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: textStyle18White600.copyWith(
              fontSize: 20.sp,
            ),
          ),
        ),
      ),
    );
  }
}

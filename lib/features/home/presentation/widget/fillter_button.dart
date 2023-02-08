import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/util/radius.dart';

class FillterButton extends StatelessWidget {
  const FillterButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: 48.h,
        decoration: BoxDecoration(
          borderRadius: customRadius(10),
          color: primary,
        ),
        child: Center(
            child: SvgPicture.asset("assets/image/svg/fillter_icon.svg")),
      ),
    );
  }
}

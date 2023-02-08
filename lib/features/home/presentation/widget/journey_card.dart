import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/styles.dart';
import 'package:travel_app/core/util/radius.dart';

class JourneyCard extends StatelessWidget {
  const JourneyCard({
    Key? key,
    required this.onTap,
    required this.amount,
    required this.name,
    required this.location,
  }) : super(key: key);
  final VoidCallback onTap;
  final String amount, name, location;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 164.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: customRadius(12),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/image/png/travle_ing.png",
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            bottom: -25,
            child: Container(
              width: 254.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 17.h),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.7,
                    color: black.withOpacity(0.1),
                    offset: const Offset(0, 4.5),
                  )
                ],
                borderRadius: customTopRadius(12),
                color: white,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: textStyle14White600.copyWith(color: black),
                      ),
                      Text(
                        location,
                        style: textStyle12Grey400,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
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
                        "\$$amount",
                        style: textStyle14White600.copyWith(color: primary),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

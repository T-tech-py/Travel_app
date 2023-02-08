import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/styles.dart';
import 'package:travel_app/core/util/radius.dart';

class ActivityPickerCard extends StatelessWidget {
  const ActivityPickerCard(
      {super.key,
      required this.length,
      required this.currentIndex,
      required this.title,
      required this.onTap,
      required this.isSelected});
  final int length, currentIndex;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: isSelected ? Colors.transparent : grey),
            color: isSelected ? primary : Colors.transparent,
            borderRadius: customRadius(8)),
        child: Center(
          child: Text(
            title,
            style: isSelected
                ? textStyle14White400.copyWith(fontSize: 12.sp)
                : textStyle12Grey400,
          ),
        ),
      ),
    );
  }
}

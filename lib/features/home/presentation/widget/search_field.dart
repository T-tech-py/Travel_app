import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/styles.dart';
import 'package:travel_app/core/util/radius.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: customRadius(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.7,
            color: black.withOpacity(0.1),
            offset: const Offset(0, 4.5),
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: grey,
          hintText: "Search location",
          hintStyle: textStyle14White400.copyWith(color: grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: customRadius(10),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: customRadius(10),
            borderSide: BorderSide(color: primary),
          ),
        ),
      ),
    );
  }
}

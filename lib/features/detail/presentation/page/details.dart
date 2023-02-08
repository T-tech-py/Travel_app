import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/sizeboxs.dart';
import 'package:travel_app/core/constans/styles.dart';
import 'package:travel_app/core/router/navigator.dart';
import 'package:travel_app/core/util/radius.dart';
import 'package:travel_app/features/detail/presentation/widget/back_arrow.dart';

import '../widget/amount_card.dart';
import '../widget/options_button.dart';
import '../widget/order_now_button.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ySize(30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackArrow(
                  onTap: () {
                    Navigate.pop(context);
                  },
                ),
                Text(
                  "Details",
                  style: textStyle14White600.copyWith(color: black),
                ),
                OptionButton(onTap: () {}),
              ],
            ),
          ),
          ySize(29),
          Center(
            child: ClipRRect(
              borderRadius: customRadius(15),
              child: Image.asset(
                "assets/image/png/travle_ing.png",
                width: 300.w,
                height: 320.h,
              ),
            ),
          ),
          ySize(16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tanjung Aan.",
                        style: textStyle14White600.copyWith(
                          fontWeight: FontWeight.w500,
                          color: black,
                        )),
                    Text("Pujut, Lombok Tengah",
                        style: textStyle12Grey400.copyWith(fontSize: 10.sp)),
                  ],
                ),
                const AmountCard(amount: 230),
              ],
            ),
          ),
          ySize(34),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              "Description",
              style: textStyle14White600.copyWith(color: black),
            ),
          ),
          ySize(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              "The most beautiful beach in Lombok and the closest to Kuta."
              " It's only 15 minutes ride by scooter on a paved road from "
              "Kuta.",
              style: textStyle12Grey400,
            ),
          ),
          const Spacer(),
          Container(
            height: 81.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            decoration: BoxDecoration(
              borderRadius: customTopRadius(10),
              color: white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.7,
                  color: black.withOpacity(0.1),
                  offset: const Offset(0, -4.5),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total Price", style: textStyle12Grey400),
                    Text.rich(
                        TextSpan(text: "\$230", children: [
                          TextSpan(text: "/person", style: textStyle12Grey400)
                        ]),
                        style: textStyle20Primary400),
                  ],
                ),
                OrderNowButton(
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

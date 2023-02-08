import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/sizeboxs.dart';
import 'package:travel_app/core/router/navigator.dart';
import 'package:travel_app/core/util/radius.dart';
import 'package:travel_app/features/home/presentation/page/home.dart';
import 'package:travel_app/features/onboarding/presentation/widget/caption_text.dart';
import 'package:travel_app/features/onboarding/presentation/widget/custom_button.dart';
import 'package:travel_app/features/onboarding/presentation/widget/indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ySize(40),
            Expanded(
              child: Image.asset(
                "assets/image/png/onboarding.png",
                height: 311.h,
                width: 324.w,
              ),
            ),
            ySize(30),
            Center(
              child: Container(
                width: 301.w,
                height: 341.h,
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                decoration: BoxDecoration(
                  borderRadius: customRadius(40),
                  color: secondaryColor,
                ),
                child: Column(
                  children: [
                    ySize(28),
                    Expanded(
                      child: PageView(
                        controller: _controller,
                        onPageChanged: (pageIndex) {
                          _currentIndex = pageIndex;
                          setState(() {
                            _controller.animateToPage(pageIndex,
                                duration: const Duration(milliseconds: 20),
                                curve: Curves.easeIn);
                          });
                        },
                        children: const [
                          CaptionText(
                            text1: "Easily Travel From \nYour Pocket",
                            text2: "Eaasily plan, manage and order your trip,"
                                "and journey with Safari",
                          ),
                          CaptionText(
                            text1: "Easily Travel From Your Pocket",
                            text2: "Eaasily plan, manage and order your trip,"
                                "and journey with Safari",
                          ),
                          CaptionText(
                            text1: "Easily Travel From Your Pocket",
                            text2: "Eaasily plan, manage and order your trip,"
                                "and journey with Safari",
                          ),
                        ],
                      ),
                    ),
                    ySize(28),
                    Indicator(lenght: 3, currentIndex: _currentIndex),
                    ySize(28),
                    CustomButton(
                      text: "Get Started",
                      onTap: () {
                        Navigate.push(context, Home());
                      },
                    ),
                    ySize(32),
                  ],
                ),
              ),
            ),
            ySize(40),
          ],
        ),
      ),
    );
  }
}

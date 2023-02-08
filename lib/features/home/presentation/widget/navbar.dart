import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constans/colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 3,
      backgroundColor: white,
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/image/svg/home_icon.svg",
            color: grey,
          ),
          activeIcon: SvgPicture.asset("assets/image/svg/home_icon.svg"),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/image/svg/discount_icon.svg"),
            activeIcon: SvgPicture.asset(
              "assets/image/svg/discount_icon.svg",
              color: primary,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/image/svg/profile_icon.svg"),
            activeIcon: SvgPicture.asset(
              "assets/image/svg/profile_icon.svg",
              color: primary,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/image/svg/report_icon.svg"),
            activeIcon: SvgPicture.asset(
              "assets/image/svg/report_icon.svg",
              color: primary,
            ),
            label: ""),
      ],
    );
  }
}

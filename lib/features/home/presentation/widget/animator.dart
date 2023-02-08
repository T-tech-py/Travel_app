import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListAnimator extends StatelessWidget {
  const ListAnimator({Key? key, required this.child, required this.index})
      : super(key: key);
  final Widget child;
  final int index;
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      delay: const Duration(milliseconds: 100),
      child: SlideAnimation(
        duration: const Duration(milliseconds: 2500),
        curve: Curves.fastLinearToSlowEaseIn,
        horizontalOffset: -300,
        verticalOffset: -850,
        child: FadeInAnimation(
          duration: const Duration(milliseconds: 1000),
          curve: Curves.decelerate,
          child: child,
        ),
      ),
    );
  }
}

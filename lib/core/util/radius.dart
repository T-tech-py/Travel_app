import 'package:flutter/cupertino.dart';

BorderRadius customRadius(double radius) => BorderRadius.circular(radius);
BorderRadius customTopRadius(double radius) => BorderRadius.only(
    topLeft: Radius.circular(radius), topRight: Radius.circular(radius));

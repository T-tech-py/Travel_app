import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigate {
  static push(BuildContext context, Widget route) {
    return Navigator.push(
        context, CupertinoPageRoute(builder: ((context) => route)));
  }

  static justPush(BuildContext context, Widget route) {
    return Navigator.push(
        context, MaterialPageRoute(builder: ((context) => route)));
  }

  static pushNamed(BuildContext context, String route) {
    return Navigator.pushNamed(context, route);
  }

  static pop(BuildContext context) {
    return Navigator.pop(context);
  }
}

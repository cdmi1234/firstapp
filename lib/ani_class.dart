import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myanimation extends PageRoute {

  Widget second;
  myanimation(this.second);
  @override
  // TODO: implement barrierColor
  Color? get barrierColor => Colors.red;

  @override
  // TODO: implement barrierLabel
  String? get barrierLabel => "testing";

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    // TODO: implement buildPage
     return FadeTransition(opacity: animation,child: second,);
  }

  @override
  // TODO: implement maintainState
  bool get maintainState => true;

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => Duration(seconds: 5);
}

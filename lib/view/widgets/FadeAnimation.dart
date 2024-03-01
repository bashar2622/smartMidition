import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  final int duration;
  final Widget widget;
  const FadeAnimation(
      {super.key, required this.duration, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0.0, end: 1.0),
        duration: Duration(milliseconds: duration),
        curve: Curves.linear,
        builder: (context, value, child) => AnimatedOpacity(
            opacity: value,
            duration: Duration(milliseconds: 100),
            child: widget));
  }
}

import 'package:flutter/material.dart';

class Custompaddingwidget extends StatelessWidget {
  final double value;
  const Custompaddingwidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: value);
  }
}

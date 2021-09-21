import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({this.height = 0, required this.widget});

  final double height;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      child: this.widget,
    );
  }
}

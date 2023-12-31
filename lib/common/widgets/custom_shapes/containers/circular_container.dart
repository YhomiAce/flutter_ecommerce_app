import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double? width, height, radius;
  final Widget? child;
  final double padding;
  final EdgeInsets? margin;
  final Color bgColor;

  const CircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.child,
    this.padding = 0.0,
    this.margin,
    this.bgColor = TColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: bgColor,
      ),
      child: child,
    );
  }
}

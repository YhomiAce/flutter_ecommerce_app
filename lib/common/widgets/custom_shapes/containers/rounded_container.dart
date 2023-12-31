// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final double? width, height;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color bgColor;
  final Color borderColor;
  final bool showBorder;

  const RoundedContainer({
    super.key,
    this.height,
    this.width,
    this.radius = TSizes.cardRadiusLg,
    this.child,
    this.padding,
    this.margin,
    this.bgColor = TColors.white,
    this.borderColor = TColors.borderPrimary,
    this.showBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: bgColor,
        border: showBorder ? Border.all(color: borderColor) : null,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}

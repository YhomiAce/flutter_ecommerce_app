// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final IconData icon;
  final double? width, height, size;
  final Color? color;
  final Color? bgColor;
  final VoidCallback? onPressed;

  const CircularIcon({
    super.key,
    required this.icon,
    this.size = TSizes.lg,
    this.width,
    this.height,
    this.color,
    this.bgColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor != null
            ? bgColor!
            : isDarkMode
                ? TColors.black.withOpacity(.9)
                : TColors.white.withOpacity(.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}

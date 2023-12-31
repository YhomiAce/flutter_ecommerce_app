// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  final String currency, price;
  final int maxLines;
  final bool isLarge, lineThrough;

  const ProductPriceText({
    Key? key,
    required this.price,
    this.currency = '\$',
    this.maxLines = 1,
    this.lineThrough = false,
    this.isLarge = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      currency+price,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}

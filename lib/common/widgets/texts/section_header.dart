
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final String buttonTitle, title;
  final bool showActionButton;
  final Color? textColor;
  final void Function()? onPressed;

  const SectionHeading({
   super.key,
    this.buttonTitle = 'View all',
    required this.title,
    this.showActionButton = false,
    this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}

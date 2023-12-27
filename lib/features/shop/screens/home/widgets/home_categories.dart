
import 'package:ecommerce_app/common/widgets/image_test_widgets/vertical_image_text.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            const VerticalImageText(
          image: TImages.shoeIcon,
          title: 'Shoe Categories',
        ),
      ),
    );
  }
}
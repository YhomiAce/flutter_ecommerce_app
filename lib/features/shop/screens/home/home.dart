import 'package:ecommerce_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/primary_header_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  HomeAppBar(),

                  /// -- SearchBar

                  /// -- Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/features/shop/screens/home/home.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex,
          onDestinationSelected: controller.updateSelectedIndex,
          backgroundColor: isDarkMode ? TColors.black : Colors.white,
          indicatorColor: isDarkMode
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  final List<Widget> screens = [
    const HomeScreen(),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  updateSelectedIndex(int index) => _selectedIndex.value = index;
}

import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:shoppy/service/constant/colors.dart';
import 'package:shoppy/view/src/home.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: AppColors.hint,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        currentIndex: 0,
        // onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: AppColors.primaryBlue,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.category),
            title: const Text("Search"),
            selectedColor: AppColors.primaryBlue,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: AppColors.primaryBlue,
          ),
        ],
      ),
    );
  }
}

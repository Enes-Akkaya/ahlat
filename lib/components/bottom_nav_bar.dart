import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {

  void Function(int)? onTabChange;

  NavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
          color: Colors.grey,
          tabActiveBorder: Border.all(color: Colors.grey),
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 20,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
        GButton(icon: Icons.home_filled, text: "Ana Sayfa",),
        GButton(icon: Icons.shopping_cart, text: "Sepet",),
      ])
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tea_app_ui/components/bottom_nav_bar.dart';
import 'package:tea_app_ui/pages/cart_page.dart';
import 'package:tea_app_ui/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //navigate bottom bar

  int _selectedIndex = 0;
  void navigateBottomBar(int newIndex){
    setState(() {
      _selectedIndex = newIndex;
    });
  }
  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) =>navigateBottomBar(index)
      ),
      body: _pages[_selectedIndex],
    );
  }
}

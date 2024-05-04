import 'package:amazon_clone_app/constants/global_var.dart';
import 'package:amazon_clone_app/features/auth/screens/account_screen.dart';
import 'package:amazon_clone_app/features/cart/screens/cart_screen.dart';
import 'package:amazon_clone_app/features/home/screen/home_screen.dart';
import 'package:amazon_clone_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    const HomeScreen(),
    const AccountScreen(),
    const CartScreen(),

  ];

  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBorderWidth = 5;
  @override
  Widget build(BuildContext context) {
    final userCartLen = context.watch<UserProvider>().user.cart.length;
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // This is going to be the home page

          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 0
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBorderWidth))),
              child: const Icon(Icons.home_outlined),
            ),
            label: "Home",
          ),

          // this is going to be the profile
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 1
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBorderWidth))),
              child: const Icon(Icons.person_outline),
            ),
            label: "Person",
          ),

          // this is going to be the Cart
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 2
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBorderWidth))),
              child: badges.Badge(
                badgeStyle: const badges.BadgeStyle(
                  elevation: 0,
                  badgeColor: Colors.red,
                  padding: EdgeInsets.all(4),
                ),
                position: badges.BadgePosition.topEnd(top: -9, end: 0),
                stackFit: StackFit.passthrough,
                badgeContent: Text(userCartLen.toString()),
                child: const Icon(Icons.shopping_cart_outlined),
              ),
            ),
            label: "Cart",
          )
        ],
      ),
    );
  }
}

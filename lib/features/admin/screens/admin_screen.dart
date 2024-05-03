import 'package:amazon_clone_app/constants/global_var.dart';
<<<<<<< HEAD
import 'package:amazon_clone_app/features/admin/screens/analytics_screen.dart';
import 'package:amazon_clone_app/features/admin/screens/order_screen.dart';
=======
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea
import 'package:amazon_clone_app/features/admin/screens/posts_screen.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    const PostScreen(),
<<<<<<< HEAD
    const AnalyticsScreen(),
    const OrdersScreen(),
=======
    const Center(
      child: Text("Analatycis page"),
    ),
    const Center(
      child: Text("Cart page"),
    ),
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea
  ];

  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBorderWidth = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/amazon_in.png',
                  width: 120,
                  height: 45,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Admin',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          ),
        ),
      ),

      body: pages[_page],
<<<<<<< HEAD

      //Bottom bar

      bottomNavigationBar: BottomNavigationBar(
=======
      //Bottom bar

bottomNavigationBar: BottomNavigationBar(
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea
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
              child: const Icon(Icons.analytics_outlined),
            ),
            label: "Analytics",
          ),

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
              child: const Icon(Icons.all_inbox_outlined),
            ),
            label: "Inbox",
          ),

          // this is going to be the Cart
<<<<<<< HEAD
        ],
      ),
=======
          
        ],
      ),
      

      
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea

      // this is going to be the Cart
    );
  }
}

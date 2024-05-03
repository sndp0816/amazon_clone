import 'package:amazon_clone_app/common/widgets/bottom_bar.dart';
import 'package:amazon_clone_app/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_app/features/home/screen/category_deals_screen.dart';
import 'package:amazon_clone_app/features/home/screen/home_screen.dart';
import 'package:amazon_clone_app/features/order_detail/screens/order_details.dart';
import 'package:amazon_clone_app/features/product_details/screen/product_details_screen.dart';
import 'package:amazon_clone_app/features/search/screen/search_screen.dart';
import 'package:amazon_clone_app/models/order.dart';
import 'package:amazon_clone_app/models/product.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSetting) {
  switch (routeSetting.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => const AuthScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => const HomeScreen(),
      );

    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => const BottomBar(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(
              "Screen doesn't exist",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
  }
}

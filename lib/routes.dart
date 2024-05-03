import 'package:amazon_clone_app/common/widgets/bottom_bar.dart';
import 'package:amazon_clone_app/features/address/screen/address_screen.dart';
import 'package:amazon_clone_app/features/admin/screens/add_product_screen.dart';
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

    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => const AddProductScreen(),
      );

    case CategoryDealScreen.routeName:
      var category = routeSetting.arguments as String;
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => CategoryDealScreen(
          categoryName: category,
        ),
      );

    case SearchScreen.routeName:
      var searchQuery = routeSetting.arguments as String;
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );

    case ProductDetailSceen.routeName:
      var product = routeSetting.arguments as Product;
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => ProductDetailSceen(
          product: product,
        ),
      );

    case AddressScreen.routeName:
      var totalAmount = routeSetting.arguments as String;
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => AddressScreen(
          totalAmount: totalAmount,
        ),
      );

    case OrderDetailScreen.routeName:
      var order = routeSetting.arguments as Order;
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => OrderDetailScreen(
          order: order,
        ),
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

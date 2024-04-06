import 'package:amazon_clone_app/constants/global_var.dart';
import 'package:amazon_clone_app/features/admin/screens/add_product_screen.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  void nevigateToAddProduct() {
    Navigator.pushNamed(context, AddProductScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Products"),
      
      ),floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: nevigateToAddProduct,
        tooltip: 'Add a product',
        backgroundColor: GlobalVariables.selectedNavBarColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
import 'package:amazon_clone_app/constants/global_var.dart';
import 'package:amazon_clone_app/features/auth/widgets/below_app_bar.dart';
import 'package:amazon_clone_app/features/auth/widgets/orders.dart';
import 'package:amazon_clone_app/features/auth/widgets/top_buttons.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
                child: Image.asset('assets/images/amazon_in.png',width: 120,height: 45,color: Colors.black,),
              ),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  children: [
                    Padding(padding: 
                    EdgeInsets.only(right: 15),
                    child: Icon(Icons.notifications_none_outlined),
                    ),
                     Icon(Icons.search),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    
    body: Column(
      children: [
        BelowAppBar(),
        SizedBox(height: 10,),
        TopButton(),
        SizedBox(height: 20,),
        Orders()
      ],
    ),
    
    );
  }
}
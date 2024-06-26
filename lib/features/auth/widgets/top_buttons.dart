import 'package:amazon_clone_app/features/auth/services/account_services.dart';
import 'package:amazon_clone_app/features/auth/widgets/account_btn.dart';
import 'package:flutter/material.dart';

class TopButton extends StatefulWidget {
  const TopButton({super.key});

  @override
  State<TopButton> createState() => _TopButtonState();
}

class _TopButtonState extends State<TopButton> {

  final AccountServices accountServices = AccountServices();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            
              AccountButton(
                text_one: "Your order",
                onTap: () {},
                
              ),

              AccountButton(
                text_one: "Turn Seller",
                onTap: () {},
                
              ),
            
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            
              AccountButton(
                text_one: "Logout",
                onTap:  ()=> accountServices.logOut(context),
                
              ),

              AccountButton(
                text_one: "Wishlist",
                onTap: () {},
                
              ),
            
          ],
        ),
      ],
    );
  }
}
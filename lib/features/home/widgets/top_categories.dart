import 'package:amazon_clone_app/constants/global_var.dart';
import 'package:amazon_clone_app/features/home/screen/category_deals_screen.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  void NavigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoryDealScreen.routeName,
        arguments: category);
  }

  const TopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemExtent: 80,
          itemCount: GlobalVariables.categoryImages.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => NavigateToCategoryPage(
                  context, GlobalVariables.categoryImages[index]['title']!),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        GlobalVariables.categoryImages[index]['image']!,
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                  Text(
                    GlobalVariables.categoryImages[index]['title']!,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

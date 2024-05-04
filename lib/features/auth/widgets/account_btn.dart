import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  final String text_one;
  final VoidCallback onTap;
  const AccountButton({super.key, required this.text_one, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.circular(50),
            color: Colors.white),
        child: OutlinedButton(
            onPressed: onTap,
            child: Text(
              text_one,
              style:
                  const TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            )),
      ),
    );
  }
}

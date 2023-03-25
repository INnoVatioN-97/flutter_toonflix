import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Color buttonTextColor;

  const CustomButton(
      {super.key,
      required this.buttonColor,
      required this.buttonText,
      required this.buttonTextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 16, color: buttonTextColor),
        ),
      ),
    );
  }
}

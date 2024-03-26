import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.borderRadius,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: TextButton(
        onPressed: (){}, 
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12.0),
          ),
        ),
        child: Text(
          text,
          style: Styles.bold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}

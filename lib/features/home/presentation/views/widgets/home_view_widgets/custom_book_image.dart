import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookIamge extends StatelessWidget {
  const CustomBookIamge({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
          color: Colors.red,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}

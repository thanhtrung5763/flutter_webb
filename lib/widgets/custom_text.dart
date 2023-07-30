import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  final TextOverflow? overflow;
  const CustomText({
    super.key,
    required this.text,
    this.size = AppSizes.kSize16,
    this.color = AppColors.black,
    this.weight = FontWeight.normal,
    this.overflow
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: weight, overflow: overflow),
    );
  }
}

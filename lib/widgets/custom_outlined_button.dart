import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  IconData? iconData;
  final Color color;
  final EdgeInsets padding;
  final double borderRadius;

  CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.iconData,
    this.color = AppColors.black,
    this.padding = AppSizes.kButtonSizeSmall,
    this.borderRadius = AppSizes.kSize8,
  });

  @override
  Widget build(BuildContext context) {
    return iconData == null
        ? OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              padding: padding,
              side: BorderSide(color: color, width: 1.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            child: CustomText(
              text: text,
              color: color,
              weight: FontWeight.bold,
            ),
          )
        : OutlinedButton.icon(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              padding: padding,
              side: BorderSide(color: color, width: 1.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            icon: Icon(
              iconData,
              size: AppSizes.kSize20,
              color: color,
            ),
            label: CustomText(
              text: text,
              color: color,
              weight: FontWeight.bold,
            ),
          );
  }
}

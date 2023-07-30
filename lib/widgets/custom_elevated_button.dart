import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  IconData? iconData;
  final Color textColor;
  final EdgeInsets padding;
  final Color backgroundColor;
  final double borderRadius;

  CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.iconData,
    this.backgroundColor = AppColors.blue,
    this.textColor = Colors.white,
    this.padding = AppSizes.kButtonSizeSmall,
    this.borderRadius = AppSizes.kSize8,
  });

  @override
  Widget build(BuildContext context) {
    return iconData == null
        ? ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: padding,
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            child: CustomText(
              text: text,
              color: textColor,
              weight: FontWeight.bold,
            ),
          )
        : ElevatedButton.icon(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: padding,
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            icon: Icon(
              iconData,
              size: AppSizes.kSize20,
            ),
            label: CustomText(
              text: text,
              color: textColor,
              weight: FontWeight.bold,
            ),
          );
  }
}

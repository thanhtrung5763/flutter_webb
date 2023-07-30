import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CustomContainer({
    super.key,
    required this.child,
    this.margin,
    this.padding = const EdgeInsets.symmetric(vertical: AppSizes.kSize20, horizontal: AppSizes.kSize16),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderSideColor),
        borderRadius: BorderRadius.circular(AppSizes.kSize8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(200, 208, 216, 0.3),
            offset: Offset(0, 10),
            blurRadius: 20,
          ),
        ],
      ),
      child: child,
    );
  }
}

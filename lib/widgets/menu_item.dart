import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;

  const MenuItem({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? Colors.white : AppColors.black,
      ),
      title: CustomText(text: text),
    );
  }
}

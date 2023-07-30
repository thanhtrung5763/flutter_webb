import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/widgets/custom_container.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class StatisticContainer extends StatelessWidget {
  final String title;
  final String number;
  const StatisticContainer({super.key, required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title,
              weight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomText(
              text: number,
              size: AppSizes.kSize24,
              weight: FontWeight.bold,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: AppColors.grey,
                child: const Center(
                  child: CustomText(
                    text: 'Chart Here',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

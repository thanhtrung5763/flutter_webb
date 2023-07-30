import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/widgets/custom_elevated_button.dart';
import 'package:flutter_webb/widgets/custom_outlined_button.dart';

class TestButton extends StatelessWidget {
  const TestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ElevatedButton(
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //       padding: const EdgeInsets.all(18),
        //       backgroundColor: AppColors.blue,
        //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.kSize8))),
        //   child: const CustomText(
        //     text: 'Clear',
        //     color: Colors.white,
        //     weight: FontWeight.bold,
        //   ),
        // ),
        // const SizedBox(
        //   height: 16,
        // ),
        // OutlinedButton(
        //   onPressed: () {},
        //   style: OutlinedButton.styleFrom(
        //     padding: const EdgeInsets.all(AppSizes.kSize18),
        //     side: const BorderSide(color: AppColors.red, width: 1.2),
        //     // side: BorderSide.none,
        //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.kSize8)),
        //   ),
        //   child: const CustomText(
        //     text: 'Clear',
        //     color: AppColors.red,
        //     weight: FontWeight.bold,
        //   ),
        // ),
        // const SizedBox(
        //   height: 16,
        // ),
        // ElevatedButton.icon(
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //       // padding: const EdgeInsets.symmetric(horizontal: AppSizes.kSize16, vertical: AppSizes.kSize18),
        //       padding: const EdgeInsets.fromLTRB(22, 18, 26, 18),
        //       backgroundColor: AppColors.blue,
        //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.kSize8))),
        //   icon: const Icon(
        //     Icons.add,
        //     size: AppSizes.kSize20,
        //   ),
        //   label: const CustomText(
        //     text: 'Add Product',
        //     color: Colors.white,
        //     weight: FontWeight.bold,
        //   ),
        // ),
        // const SizedBox(
        //   height: 16,
        // ),
        Column(
          children: [
            CustomOutlinedButton(onPressed: () {}, text: 'Add Product'),
            CustomOutlinedButton(
              onPressed: () {},
              text: 'Clear',
              color: AppColors.red,
              padding: AppSizes.kButtonSizeMedium,
            ),
            CustomOutlinedButton(
              onPressed: () {},
              text: 'Add Product',
              color: AppColors.red,
              padding: AppSizes.kButtonSizeLarge,
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            CustomOutlinedButton(
              onPressed: () {},
              text: 'Delete Product',
              iconData: Icons.delete_outline,
              color: AppColors.red,
              padding: AppSizes.kIconButtonSizeSmall,
            ),
            CustomOutlinedButton(
              onPressed: () {},
              text: 'Delete Product',
              iconData: Icons.delete_outline,
              color: AppColors.red,
              padding: AppSizes.kIconButtonSizeMedium,
            ),
            CustomOutlinedButton(
              onPressed: () {},
              text: 'Delete Product',
              iconData: Icons.delete_outline,
              color: AppColors.red,
              padding: AppSizes.kIconButtonSizeLarge,
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            CustomElevatedButton(
              onPressed: () {},
              text: 'Add Product',
              padding: AppSizes.kIconButtonSizeSmall,
              iconData: Icons.add,
            ),
            CustomElevatedButton(
              onPressed: () {},
              text: 'Add Product',
              padding: AppSizes.kIconButtonSizeMedium,
              iconData: Icons.add,
            ),
            CustomElevatedButton(
              onPressed: () {},
              text: 'Clear',
              padding: AppSizes.kButtonSizeLarge,
              backgroundColor: AppColors.red,
            ),
          ],
        ),
        CustomElevatedButton(
          onPressed: () {},
          text: 'Delete Product',
          iconData: Icons.delete_outline,
          backgroundColor: AppColors.red,
        )
      ],
    );
  }
}

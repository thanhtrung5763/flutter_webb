import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/widgets/custom_container.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: const EdgeInsets.only(bottom: AppSizes.kSize32, top: AppSizes.kSize8),
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.kSize8, vertical: AppSizes.kSize4),
      child: AppBar(
        toolbarHeight: 80,
        leadingWidth: 90,
        // leading: Image.asset(
        //   "assets/icons/logo_no_circle.png",
        //   width: 90,
        // ),
        elevation: 0,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Container(
          margin: const EdgeInsets.only(right: 16.0),
          child: Row(
            children: [
              // Visibility(
              //   child: CustomText(
              //     text: 'boutiquea',
              //     color: Colors.black,
              //     size: 28,
              //     weight: FontWeight.bold,
              //   ),
              // ),
              Expanded(
                  child: Container(
                color: Colors.amber,
                child: const Text(''),
              )),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                  ),
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 12,
                      height: 12,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.blue, width: 2),
                      ),
                    ),
                  )
                ],
              ),
              Container(width: 1, height: 22, color: AppColors.grey),
              const SizedBox(
                width: 24,
              ),
              const CustomText(
                text: 'Thanh Ninh',
                color: AppColors.black,
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(2),
                  child: const CircleAvatar(
                    child: Icon(Icons.person_outline),
                  ),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        // iconTheme: IconThemeData(
        //   color: Colors.pinkAccent,
        // ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}

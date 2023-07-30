import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_webb/screens/orders/orders_screen.dart';
import 'package:flutter_webb/screens/products/products_screen.dart';
import 'package:flutter_webb/test_widgets/test_expansiontile.dart';
import 'package:flutter_webb/widgets/custom_text.dart';
import 'package:flutter_webb/widgets/my_appbar.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({super.key});

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  int selectedIndex = 2;
  int hoveredIndex = 2;
  final List<String> titles = [
    'Dashboard',
    'Orders',
    'Products',
    'Customers',
    'Messages',
    'Settings',
  ];
  final List<IconData> icons = [
    Icons.home,
    Icons.receipt_long,
    Icons.inventory_2,
    Icons.person,
    Icons.label,
    Icons.settings,
  ];
  final List<double> _screenHeights = [2000, 2000, 950];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.kSize12),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderSideColor, width: 1),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/logo_no_circle.png",
                      width: 85,
                    ),
                    const CustomText(
                      text: 'boutiquea',
                      color: Colors.black,
                      size: AppSizes.kSize28,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
                const TestExpansionTile(),
                const SizedBox(
                  height: AppSizes.kSize8,
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: AppSizes.kSize8,
                      );
                    },
                    itemCount: titles.length,
                    itemBuilder: (context, index) => InkResponse(
                      onHover: (value) {
                        setState(() {
                          hoveredIndex = index;
                        });
                      },
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: IgnorePointer(
                        child: Container(
                          // margin: const EdgeInsets.all(AppSizes.kSize8),

                          // TRY ?
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(AppSizes.kSize8),
                          //   border: selectedIndex == index || hoveredIndex == index
                          //       ? Border.all(color: AppColors.blue.withOpacity(0.2))
                          //       : Border.all(color: Colors.transparent),
                          //   color: selectedIndex == index || hoveredIndex == index
                          //       ? AppColors.blue.withOpacity(0.1)
                          //       : null,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppSizes.kSize8),
                            color: selectedIndex == index || hoveredIndex == index ? AppColors.whiteBackground : null,
                            // boxShadow: selectedIndex == index
                            //     ? [
                            //         const BoxShadow(
                            //           color: Color.fromRGBO(0, 0, 0, 0.12),
                            //           blurRadius: 5.0,
                            //           offset: Offset(0, 1),
                            //         ),
                            //         const BoxShadow(
                            //           color: Color.fromRGBO(0, 0, 0, 0.14),
                            //           blurRadius: 2.0,
                            //           offset: Offset(0, 2),
                            //         ),
                            //       ]
                            //     : null,
                          ),
                          child: ListTile(
                            minLeadingWidth: AppSizes.kSize32,
                            leading: Icon(
                              icons[index],
                              color: selectedIndex == index || hoveredIndex == index ? AppColors.blue : AppColors.black,
                            ),
                            title: CustomText(
                              text: titles[index],
                              color: selectedIndex == index || hoveredIndex == index ? AppColors.blue : AppColors.black,
                              weight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 5,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: SizedBox(
                height: _screenHeights[selectedIndex],
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const MyAppBar(),
                    Expanded(
                      child: selectedIndex == 0
                          ? const DashBoardScreen()
                          : selectedIndex == 1
                              ? const OrdersScreen()
                              : selectedIndex == 2
                                  ? const ProductsScreen()
                                  : Container(),
                    )
                  ],
                ),
              ),
            )),
        // const AppContent(),
      ],
    );
  }
}

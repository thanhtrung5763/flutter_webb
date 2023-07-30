import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/test_widgets/custom_expansiontile_2.dart' as custom;
import 'package:flutter_webb/widgets/custom_text.dart';

class TestExpansionTile extends StatefulWidget {
  const TestExpansionTile({super.key});

  @override
  State<TestExpansionTile> createState() => _TestExpansionTileState();
}

class _TestExpansionTileState extends State<TestExpansionTile> {
  bool _isExpanded = false;
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(AppSizes.kSize8),
        //     color: _isExpansionChanged ? AppColors.blue : null,
        //     boxShadow: _isExpansionChanged
        //         ? [
        //             const BoxShadow(
        //               color: Color.fromRGBO(0, 0, 0, 0.12),
        //               blurRadius: 5.0,
        //               offset: Offset(0, 1),
        //             ),
        //             const BoxShadow(
        //               color: Color.fromRGBO(0, 0, 0, 0.14),
        //               blurRadius: 2.0,
        //               offset: Offset(0, 2),
        //             ),
        //           ]
        //         : null,
        //   ),
        //   child: ListTile(
        //     title: CustomText(
        //       text: 'Add Product',
        //       color: _isExpansionChanged ? Colors.white : AppColors.black,
        //     ),
        //     onTap: () {},
        //   ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: MouseRegion(
                  onHover: (event) {
                    setState(() {
                      _isHovered = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      _isHovered = false;
                    });
                  },
                  child: custom.ExpansionTile(
                    decoration: BoxDecoration(
                      color: _isExpanded || _isHovered ? AppColors.whiteBackground : null,
                      borderRadius: _isExpanded
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(AppSizes.kSize8), topRight: Radius.circular(AppSizes.kSize8))
                          : BorderRadius.circular(AppSizes.kSize8),
                      // border: _isExpanded || _isHovered
                      //     ? Border.all(color: AppColors.blue.withOpacity(0.2))
                      //     : Border.all(color: Colors.transparent),
                    ),
                    leading: Icon(
                      Icons.inventory,
                      color: _isExpanded || _isHovered ? AppColors.blue : AppColors.black,
                    ),
                    title: CustomText(
                      text: 'Products',
                      color: _isExpanded || _isHovered ? AppColors.blue : AppColors.black,
                      weight: FontWeight.bold,
                    ),
                    // collapsedShape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(8), side: const BorderSide(color: AppColors.blue)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: AppColors.blue.withOpacity(0.4))),
                    trailing: AnimatedRotation(
                      turns: _isExpanded ? .5 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: _isExpanded || _isHovered ? AppColors.blue : AppColors.black,
                      ),
                    ),
                    onExpansionChanged: (value) {
                      setState(() {
                        _isExpanded = value;
                      });
                      print(_isExpanded);
                    },
                    childrenPadding: const EdgeInsets.fromLTRB(16, 16, 20, 16),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppSizes.kSize8),
                          border: Border.all(color: AppColors.blue.withOpacity(0.2)),
                          color: AppColors.blue.withOpacity(0.1),
                          // boxShadow: const [
                          //   BoxShadow(
                          //     color: Color.fromRGBO(0, 0, 0, 0.12),
                          //     blurRadius: 5.0,
                          //     offset: Offset(0, 1),
                          //   ),
                          //   BoxShadow(
                          //     color: Color.fromRGBO(0, 0, 0, 0.14),
                          //     blurRadius: 2.0,
                          //     offset: Offset(0, 2),
                          //   ),
                          // ],
                        ),
                        child: ListTile(
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                          title: const CustomText(
                            text: 'Add Product',
                            size: AppSizes.kSize14,
                            color: AppColors.blue,
                            weight: FontWeight.bold,
                          ),
                          onTap: () {},
                        ),
                      ),
                      ListTile(
                        title: const CustomText(text: 'Categories'),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const CustomText(text: 'Sub Categories'),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const CustomText(text: 'Brands'),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const CustomText(text: 'Discounts'),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class TestDropDown extends StatefulWidget {
  const TestDropDown({super.key});

  @override
  State<TestDropDown> createState() => _TestDropDownState();
}

class _TestDropDownState extends State<TestDropDown> {
  List<String> sizes = ['S', 'M', 'L'];
  String? _selectedSize = 'S';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButtonHideUnderline(
          child: Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderSideColor),
                borderRadius: BorderRadius.circular(AppSizes.kSize8),
              ),
              child: DropdownButton(
                isDense: true,
                isExpanded: true,
                menuMaxHeight: 150,
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.black,
                ),
                value: _selectedSize,
                items: sizes.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: CustomText(
                      text: item,
                    ),
                  );
                }).toList(),
                onChanged: (String? item) {
                  setState(() {
                    _selectedSize = item;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

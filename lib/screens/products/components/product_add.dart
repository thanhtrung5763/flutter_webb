import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/screens/products/components/drag_drop_container.dart';
import 'package:flutter_webb/test_widgets/test_dropdown.dart';
import 'package:flutter_webb/widgets/custom_container.dart';
import 'package:flutter_webb/widgets/custom_elevated_button.dart';
import 'package:flutter_webb/widgets/custom_outlined_button.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class ProductAdd extends StatelessWidget {
  const ProductAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Flexible(
        //   child: CustomContainer(
        //     padding: const EdgeInsets.all(AppSizes.kSize8),
        //     child: Row(
        //       children: [
        //         OutlinedButton(
        //           onPressed: () {},
        //           style: OutlinedButton.styleFrom(
        //               padding: const EdgeInsets.symmetric(horizontal: AppSizes.kSize10, vertical: AppSizes.kSize18),
        //               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.kSize8))),
        //           child: Row(
        //             children: const [
        //               CustomText(
        //                 text: 'Category',
        //               ),
        //               Icon(
        //                 Icons.keyboard_arrow_down,
        //                 color: AppColors.black,
        //               )
        //             ],
        //           ),
        //         ),
        //         const Spacer(),
        //         CustomElevatedButton(
        //           onPressed: () {},
        //           text: 'Add Product',
        //           iconData: Icons.add,
        //           padding: AppSizes.kIconButtonSizeLarge,
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 16,
        // ),
        Expanded(
          child: CustomContainer(
            padding: const EdgeInsets.symmetric(vertical: AppSizes.kSize20, horizontal: AppSizes.kSize20),
            child: Column(
              children: [
                Row(
                  children: const [
                    CustomText(
                      text: 'Add Product',
                      size: AppSizes.kSize18,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderSideColor),
                              borderRadius: BorderRadius.circular(AppSizes.kSize8)),
                          child: Column(
                            children: const [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText(
                                  text: 'Add Images',
                                  weight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: AppSizes.kSize24,
                              ),
                              Expanded(
                                // child: Container(
                                //   color: Colors.grey,
                                // ),
                                flex: 10,
                                child: ExampleDragTarget(),
                              ),
                              // const SizedBox(
                              //   height: AppSizes.kSize8,
                              // ),
                              // Expanded(
                              //   flex: 1,
                              //   child: Container(
                              //     color: Colors.grey,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: AppSizes.kSize16,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderSideColor),
                              borderRadius: BorderRadius.circular(AppSizes.kSize8)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TitleInput(text: 'Product Name', hintText: 'Product Name'),
                              const SizedBox(
                                height: AppSizes.kSize24,
                              ),
                              const TitleDropDown(text: 'Category'),
                              const SizedBox(
                                height: AppSizes.kSize24,
                              ),

                              const TitleDropDown(text: 'Sub Category'),
                              const SizedBox(
                                height: AppSizes.kSize24,
                              ),
                              const TitleInput(text: 'Price', textPrefix: '\$ '),
                              const SizedBox(
                                height: AppSizes.kSize24,
                              ),
                              const TextSpanInput(text: 'Description', hintText: 'Description'),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // CustomElevatedButton(
                                  //   onPressed: () {},
                                  //   text: 'Upload',
                                  // ),
                                  // const SizedBox(
                                  //   width: 16,
                                  // ),
                                  CustomOutlinedButton(
                                    onPressed: () {},
                                    text: 'Clear',
                                    color: AppColors.red,
                                  ),
                                ],
                              ),
                              // Expanded(
                              //   child: Container(
                              //     color: Colors.grey,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSizes.kSize20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomElevatedButton(
                      onPressed: () {},
                      text: 'Upload',
                      padding: AppSizes.kButtonSizeMedium,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    CustomOutlinedButton(
                      onPressed: () {},
                      text: 'Clear',
                      color: AppColors.red,
                      padding: AppSizes.kButtonSizeMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Expanded(child: ExampleDragTarget())
      ],
    );
  }
}

class TitleDropDown extends StatelessWidget {
  final String text;

  const TitleDropDown({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          weight: FontWeight.bold,
        ),
        const SizedBox(
          height: AppSizes.kSize10,
        ),
        const TestDropDown(),
      ],
    );
  }
}

class TitleInput extends StatelessWidget {
  final String text;
  final String? hintText;
  final String? textPrefix;

  const TitleInput({super.key, required this.text, this.hintText, this.textPrefix});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          weight: FontWeight.bold,
        ),
        const SizedBox(
          height: AppSizes.kSize10,
        ),
        TextField(
          cursorColor: AppColors.black,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(16, 18, 16, 16),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.borderSideColor),
              borderRadius: BorderRadius.circular(AppSizes.kSize8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.black, width: 1.2),
              borderRadius: BorderRadius.circular(AppSizes.kSize8),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: AppColors.grey),
            prefixIcon: textPrefix != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomText(
                      text: textPrefix!,
                    ),
                  )
                : null,
            prefixIconConstraints: textPrefix != null ? const BoxConstraints(maxWidth: 36, maxHeight: 36) : null,
          ),
        ),
      ],
    );
  }
}

class TextSpanInput extends StatelessWidget {
  final String text;
  final String hintText;

  const TextSpanInput({super.key, required this.text, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: text,
            weight: FontWeight.bold,
          ),
          const SizedBox(
            height: AppSizes.kSize10,
          ),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.top,
              expands: true,
              maxLines: null,
              maxLength: 600,
              cursorColor: AppColors.black,
              decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.fromLTRB(16, 18, 16, 16),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.borderSideColor),
                    borderRadius: BorderRadius.circular(AppSizes.kSize8),
                  ),
                  // border: OutlineInputBorder(
                  //   borderSide: const BorderSide(color: Colors.red),
                  //   borderRadius: BorderRadius.circular(AppSizes.kSize8),
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.black, width: 1.2),
                    borderRadius: BorderRadius.circular(AppSizes.kSize8),
                  ),
                  hintText: hintText,
                  hintStyle: const TextStyle(color: AppColors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}

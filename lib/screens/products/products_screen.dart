import 'package:flutter/material.dart';
import 'package:flutter_webb/screens/products/components/product_add.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Flexible(
    //       child: CustomContainer(
    //         padding: const EdgeInsets.all(AppSizes.kSize8),
    //         child: Row(
    //           children: [
    //             OutlinedButton(
    //               onPressed: () {},
    //               style: OutlinedButton.styleFrom(
    //                   padding: const EdgeInsets.symmetric(horizontal: AppSizes.kSize10, vertical: AppSizes.kSize18),
    //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.kSize8))),
    //               child: Row(
    //                 children: const [
    //                   CustomText(
    //                     text: 'Category',
    //                   ),
    //                   Icon(
    //                     Icons.keyboard_arrow_down,
    //                     color: AppColors.black,
    //                   )
    //                 ],
    //               ),
    //             ),
    //             const Spacer(),
    //             ElevatedButton.icon(
    //               onPressed: () {},
    //               style: ElevatedButton.styleFrom(
    //                   padding: const EdgeInsets.symmetric(horizontal: AppSizes.kSize10, vertical: AppSizes.kSize18),
    //                   backgroundColor: AppColors.blue,
    //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.kSize6))),
    //               icon: const Icon(
    //                 Icons.add,
    //                 size: AppSizes.kSize20,
    //               ),
    //               label: const CustomText(
    //                 text: 'Add Product',
    //                 color: Colors.white,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //     const SizedBox(
    //       height: 16,
    //     ),
    //     const Expanded(
    //       flex: 3,
    //       child: TableProducts(),
    //     ),
    //     const SizedBox(
    //       height: 16,
    //     ),
    //     const Expanded(
    //       flex: 3,
    //       child: TestPaginatedTable(),
    //     ),
    //   ],
    // );
    return ProductAdd();
  }
}

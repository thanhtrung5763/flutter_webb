import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/widgets/custom_container.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class TableProducts extends StatelessWidget {
  const TableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          Row(
            children: const [
              CustomText(
                text: 'Products',
                size: AppSizes.kSize18,
                weight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: DataTable2(
              headingRowColor: const MaterialStatePropertyAll(AppColors.whiteBackground),
              columnSpacing: 12,
              horizontalMargin: 24,
              minWidth: 600,
              dataRowHeight: 84,
              lmRatio: 3.5,
              border: TableBorder(
                  top: const BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.blue[300]!),
                  left: BorderSide(color: Colors.yellow[300]!),
                  right: BorderSide(color: Colors.pink[300]!),
                  verticalInside: BorderSide(color: Colors.red[300]!),
                  horizontalInside: const BorderSide(color: Colors.green, width: 1)),
              columns: const [
                DataColumn(
                  label: CustomText(
                    text: 'Product No.',
                    weight: FontWeight.bold,
                  ),
                ),
                DataColumn2(
                  label: CustomText(
                    text: 'Name',
                    weight: FontWeight.bold,
                  ),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: CustomText(
                    text: 'Category',
                    weight: FontWeight.bold,
                  ),
                ),
                DataColumn(
                  label: CustomText(
                    text: 'Price',
                    weight: FontWeight.bold,
                  ),
                ),
                DataColumn(
                  label: CustomText(
                    text: 'Stock',
                    weight: FontWeight.bold,
                  ),
                ),
                DataColumn(
                  label: CustomText(
                    text: 'Sold',
                    weight: FontWeight.bold,
                  ),
                ),
                DataColumn(
                  label: CustomText(
                    text: 'Actions',
                    weight: FontWeight.bold,
                  ),
                ),
              ],
              rows: List<DataRow>.generate(
                100,
                (index) {
                  return DataRow(
                    cells: [
                      DataCell(CustomText(
                        text: '#42548$index',
                        size: 14,
                      )),
                      DataCell(
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: AppSizes.kSize8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(AppSizes.kSize8),
                                child: Image.network(
                                  'https://assets.myntassets.com/h_720,q_90,w_540/v1/assets/images/productimage/2020/9/3/4c1b82aa-c40b-4b41-abe4-2e247b27e5c11599082780933-1.jpg',
                                  width: 56,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Expanded(
                              child: CustomText(
                                text: 'White and Blue striped T-shirt, has a round neck, and three-quarter sleeves',
                                size: AppSizes.kSize14,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      const DataCell(
                        CustomText(
                          text: 'tshirt',
                          size: AppSizes.kSize14,
                        ),
                      ),
                      DataCell(
                        CustomText(
                          text: '\$${213 * (15 - (index + 5))}',
                          size: AppSizes.kSize14,
                        ),
                      ),
                      DataCell(
                        CustomText(
                          text: '${213 * (15 - (index + 5))}',
                          size: AppSizes.kSize14,
                        ),
                      ),
                      DataCell(
                        CustomText(
                          text: '${213 * (12 - (index + 5))}',
                          size: AppSizes.kSize14,
                        ),
                      ),
                      DataCell(Row(
                        children: const [
                          Icon(
                            Icons.remove_red_eye,
                            color: AppColors.blue,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.edit_note,
                            color: AppColors.teal,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.delete_outline,
                            color: AppColors.red,
                          ),
                        ],
                      )),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

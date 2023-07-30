import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/widgets/custom_container.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class TableRecentOrders extends StatelessWidget {
  const TableRecentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          Row(
            children: [
              CustomText(
                text: 'Recent Orders',
                size: AppSizes.kSize36 / 2,
                weight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: DataTable2(
              headingRowColor: const MaterialStatePropertyAll(AppColors.whiteBackground),
              columnSpacing: 12,
              horizontalMargin: 24,
              minWidth: 600,
              columns: const [
                DataColumn(
                  label: CustomText(
                    text: 'Order No.',
                    weight: FontWeight.bold,
                  ),
                ),
                DataColumn(
                  label: CustomText(
                    text: 'Date Time',
                    weight: FontWeight.bold,
                  ),
                ),
                DataColumn(
                  label: CustomText(
                    text: 'Customer Name',
                    weight: FontWeight.bold,
                  ),
                ),
                DataColumn(
                  label: CustomText(
                    text: 'Order Amount',
                    weight: FontWeight.bold,
                  ),
                ),
                DataColumn(
                  label: CustomText(
                    text: 'Status',
                    weight: FontWeight.bold,
                  ),
                ),
              ],
              rows: List<DataRow>.generate(
                100,
                (index) {
                  dynamic orderStatusColor;
                  dynamic orderStatusName;
                  if (index == 1) {
                    orderStatusColor = AppColors.yellow;
                    orderStatusName = 'Pending';
                  } else if (index == 2) {
                    orderStatusColor = AppColors.teal;
                    orderStatusName = 'Approved';
                  } else {
                    orderStatusColor = AppColors.red;
                    orderStatusName = 'Canceled';
                  }
                  return DataRow(
                    cells: [
                      DataCell(CustomText(text: '#42548$index')),
                      DataCell(CustomText(text: '${DateTime.now().add(Duration(minutes: index))}')),
                      DataCell(CustomText(text: 'Thanh Ninh')),
                      DataCell(CustomText(text: '\$${213 * (15 - (index + 5))}')),
                      DataCell(
                        Container(
                          width: AppSizes.kSize48 * 2,
                          height: AppSizes.kSize32,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: orderStatusColor.withOpacity(0.1),
                            shape: StadiumBorder(
                              side: BorderSide(color: orderStatusColor.withOpacity(0.1), width: 1),
                            ),
                          ),
                          child: CustomText(
                            text: orderStatusName,
                            color: orderStatusColor,
                          ),
                        ),
                      ),
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

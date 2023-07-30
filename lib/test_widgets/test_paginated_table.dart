import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/test_widgets/my_datasource.dart';
import 'package:flutter_webb/widgets/custom_container.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class TestPaginatedTable extends StatefulWidget {
  const TestPaginatedTable({super.key});

  @override
  State<TestPaginatedTable> createState() => _TestPaginatedTableState();
}

class _TestPaginatedTableState extends State<TestPaginatedTable> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  final DataTableSource _myDataSource = MyDataSource();

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
            child: PaginatedDataTable2(
              horizontalMargin: 24,
              columnSpacing: 12,
              minWidth: 600,
              rowsPerPage: _rowsPerPage,
              wrapInCard: false,
              renderEmptyRowsInTheEnd: false,
              headingRowColor: MaterialStateColor.resolveWith((states) => Colors.grey[200]!),
              header: const CustomText(
                text: 'Products',
                size: AppSizes.kSize18,
                weight: FontWeight.bold,
              ),
              // border: TableBorder(
              //     top: const BorderSide(color: Colors.black),
              //     bottom: BorderSide(color: Colors.blue[300]!),
              //     left: BorderSide(color: Colors.yellow[300]!),
              //     right: BorderSide(color: Colors.pink[300]!),
              //     verticalInside: BorderSide(color: Colors.red[300]!),
              //     horizontalInside: const BorderSide(color: Colors.green, width: 1)),
              onPageChanged: (rowIndex) {
                print(rowIndex);
              },
              onRowsPerPageChanged: (value) {
                _rowsPerPage = value!;
              },
              columns: const [
                DataColumn(
                  label: CustomText(
                    text: 'ID.',
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
                    text: 'Price',
                    weight: FontWeight.bold,
                  ),
                ),
              ],
              source: _myDataSource,
            ),
          ),
        ],
      ),
    );
  }
}

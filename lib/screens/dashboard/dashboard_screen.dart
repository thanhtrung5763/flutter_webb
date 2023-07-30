import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/widgets/statistic_container.dart';
import 'package:flutter_webb/widgets/table_recent_orders.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 100,
            child: Row(
              children: const [
                StatisticContainer(title: 'Today Revenue', number: '8,521'),
                SizedBox(
                  width: 32,
                ),
                StatisticContainer(title: 'Today Order', number: '1436'),
                SizedBox(
                  width: 32,
                ),
                StatisticContainer(title: 'Total Products', number: '25,321'),
                SizedBox(
                  width: 32,
                ),
                StatisticContainer(title: 'Today Visitors', number: '15,752'),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: AppColors.orange,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: Container(color: AppColors.purple),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Expanded(
          flex: 3,
          child: TableRecentOrders(),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          flex: 7,
          child: Container(color: AppColors.red),
        )
      ],
    );
  }
}

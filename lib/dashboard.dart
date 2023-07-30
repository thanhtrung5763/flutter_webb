import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/widgets/statistic_container.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({super.key});

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int selectedIndex = 0;
  List<String> titles = ['Dashboard', 'Orders', 'Products', 'Customers', 'Messages', 'Settings'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Expanded(
                child: ListView.builder(
                  itemCount: titles.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: selectedIndex == index ? AppColors.blue : null,
                        boxShadow: selectedIndex == index
                            ? [
                                const BoxShadow(
                                  color: Color(0xFFe8e8e8),
                                  blurRadius: 1.0,
                                  offset: Offset(2, 4),
                                ),
                              ]
                            : null,
                      ),
                      child: ListTile(
                        leading: Icon(Icons.home, color: selectedIndex == index ? Colors.white : AppColors.black),
                        title: Text(
                          titles[index],
                          style: TextStyle(color: selectedIndex == index ? Colors.white : AppColors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        StatisticContainer(title: 'Today Revenue', number: '8,521'),
                        StatisticContainer(title: 'Today Order', number: '1436'),
                        StatisticContainer(title: 'Total Products', number: '25,321'),
                        StatisticContainer(title: 'Today Visitors', number: '15,752'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

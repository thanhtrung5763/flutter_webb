import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_responsive.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

AppBar TopNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    toolbarHeight: 80,
    leadingWidth: 90,
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Image.asset(
            "assets/icons/logo_no_circle.png",
            width: 90,
          )
        : IconButton(
            onPressed: () {
              key.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
    elevation: 0,
    titleSpacing: 0,
    automaticallyImplyLeading: false,
    title: Container(
      margin: EdgeInsets.only(right: 16.0),
      child: Row(
        children: [
          Visibility(
            child: CustomText(
              text: 'boutiquea',
              color: Colors.black,
              size: 28,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.amber,
            child: Text(''),
          )),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.blue, width: 2),
                  ),
                ),
              )
            ],
          ),
          Container(width: 1, height: 22, color: AppColors.grey),
          SizedBox(
            width: 24,
          ),
          CustomText(
            text: 'Thanh Ninh',
            color: AppColors.black,
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                child: Icon(Icons.person_outline),
              ),
            ),
          )
        ],
      ),
    ),
    backgroundColor: Colors.white,
    // iconTheme: IconThemeData(
    //   color: Colors.pinkAccent,
    // ),
  );
}

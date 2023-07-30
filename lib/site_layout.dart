import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_responsive.dart';
import 'package:flutter_webb/widgets/large_screen.dart';
import 'package:flutter_webb/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      // appBar: MyAppBar(),
      // drawer: SideBarDrawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}

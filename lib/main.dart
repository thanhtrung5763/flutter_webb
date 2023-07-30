import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_router.dart';
import 'package:flutter_webb/configs/app_theme.dart';
import 'package:flutter_webb/test_widgets/test_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      routerConfig: AppRouter().router,
      // home: const SiteLayout(),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: theme(),
    //   home: const TestScreen(),
    // );
  }
}

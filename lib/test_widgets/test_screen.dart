import 'package:flutter/material.dart';
import 'package:flutter_webb/test_widgets/test_button.dart';
import 'package:flutter_webb/test_widgets/test_expansiontile.dart';
import 'package:flutter_webb/widgets/custom_container.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CustomContainer(child: TestButton())),
    );
  }
}

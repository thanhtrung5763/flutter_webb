import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonIconText extends StatefulWidget {
  const ButtonIconText({super.key});

  @override
  State<ButtonIconText> createState() => _ButtonIconTextState();
}

class _ButtonIconTextState extends State<ButtonIconText> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        setState(() {
          isPressed = !isPressed;
          print(isPressed);
        });
      },
      icon: Icon(
        Icons.home,
        color: Colors.black,
      ),
      label: Text(
        'Dashboard',
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: isPressed ? Colors.blueAccent : Colors.white,
      ),
    );
  }
}

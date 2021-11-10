import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';

/// кнопки Запланировать и  В Избранное
class ButtonNavigationBar extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;

  ButtonNavigationBar(
      {Key? key,
      required this.title,
      required this.iconColor,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(iconColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(title),
          SizedBox(width: 30, height: 30),
        ],
      ),
    );
  }
}
